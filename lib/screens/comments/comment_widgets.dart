import 'package:flutter/material.dart';
import 'package:football_app/screens/comments/comment_page.dart';

class CommentWidget extends StatefulWidget {
  final String comment;

  const CommentWidget({
    key,
    required this.comment,
  }) : super(key: key);

  @override
  State<CommentWidget> createState() => _CommentWidgetState();
}

class _CommentWidgetState extends State<CommentWidget> {
  List<String> myReplies = [];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    if (widget.comment != '') {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: size.width / 25,
            backgroundColor: Colors.black45,
            child: Icon(
              // Icons.perm_identity_sharp,
              cModel.avatar,
              color: Colors.brown,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 5, top: 5),
                  child: Text(
                    cModel.userName,
                    style: const TextStyle(
                        color: Color.fromRGBO(79, 79, 79, 1),
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  padding: const EdgeInsets.all(10),
                  constraints: BoxConstraints(
                    maxWidth: size.width * 0.7,
                  ),
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(0, 187, 89, 1),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(12),
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      )),
                  child: Text(widget.comment),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    bottom: 5,
                  ),
                  child: SizedBox(
                    height: size.height / 25,
                    child: TextButton(
                      onPressed: () {
                        print('Commented');
                        setState(
                          () {
                            
                            // commentController
                          },
                        );
                      },
                      child: const Text(
                        'Reply',
                        style: TextStyle(
                            color: Color.fromRGBO(79, 79, 79, 1),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    ListView.builder(
                      physics: const ClampingScrollPhysics(),
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(8),
                      itemCount: myReplies.length,
                      itemBuilder: (BuildContext context, index) {
                        return ReplyCommentWidget(
                            commentReply: myReplies[index]);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );
    } else {
      return Container();
    }
  }
}

//-----------------------------------------------------------------------------

class ReplyCommentWidget extends StatefulWidget {
  final String commentReply;

  const ReplyCommentWidget({
    key,
    required this.commentReply,
  }) : super(key: key);

  @override
  State<ReplyCommentWidget> createState() => _ReplyCommentWidgetState();
}

class _ReplyCommentWidgetState extends State<ReplyCommentWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    if (widget.commentReply != '') {
      return Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: size.width / 25,
              backgroundColor: Colors.black45,
              child: Icon(
                cModel.avatar,
                color: Colors.brown,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, bottom: 5, top: 5),
                    child: Text(
                      cModel.userName,
                      style: const TextStyle(
                          color: Color.fromRGBO(79, 79, 79, 1),
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    padding: const EdgeInsets.all(10),
                    constraints: BoxConstraints(
                      maxWidth: size.width * 0.65,
                    ),
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(0, 187, 89, 1),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        )),
                    child: Text(widget.commentReply),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 10,
                      bottom: 5,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    } else {
      return Container();
    }
  }
}