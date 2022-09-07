import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class CustomMultiChildLayoutDemo extends StatelessWidget {
  const CustomMultiChildLayoutDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        color: Colors.red,
        child: CustomMultiChildLayout(
          delegate: FollowTheLeader(),
          children: <Widget>[
            LayoutId(
              id: FollowTheLeaderId.leader,
              child: const Text('App'),
            ),
            LayoutId(
              id: FollowTheLeaderId.follower,
              child: const Text('这是一款不错的App'),
            ),
          ],
        ),
      ),
    );
  }
}

enum FollowTheLeaderId { leader, follower }

class FollowTheLeader extends MultiChildLayoutDelegate {
  @override
  void performLayout(Size size) {
    Size leaderSize = Size.zero;
    if (hasChild(FollowTheLeaderId.leader)) {
      leaderSize =
          layoutChild(FollowTheLeaderId.leader, BoxConstraints.loose(size));
      positionChild(FollowTheLeaderId.leader, Offset.zero);
    }

    if (hasChild(FollowTheLeaderId.follower)) {
      Size followerSize =
          layoutChild(FollowTheLeaderId.follower, BoxConstraints.loose(size));
      positionChild(
          FollowTheLeaderId.follower,
          Offset(size.width - followerSize.width,
              size.height - followerSize.height));
    }
  }

  @override
  bool shouldRelayout(MultiChildLayoutDelegate oldDelegate) => false;
}
