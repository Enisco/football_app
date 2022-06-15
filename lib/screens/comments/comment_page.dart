import 'package:flutter/material.dart';
import 'package:football_app/screens/comments/comment_models.dart';
import 'package:football_app/screens/comments/comment_widgets.dart';

bool isTextfieldActive = false;
TextEditingController commentController = TextEditingController();
String messageString = '';
CommentModel cModel = CommentModel(
    avatar: Icons.perm_identity_outlined,
    userName: 'Name',
    content: messageString);

class CommentPage extends StatefulWidget {
  const CommentPage({Key? key}) : super(key: key);

  @override
  State<CommentPage> createState() => _CommentPageState();
}

class _CommentPageState extends State<CommentPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 51, 51, 1),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
        centerTitle: true,
        title: const Text(
          'Comments',
        ),
      ),
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Positioned(
              top: 5,
              child: SizedBox(
                height: isTextfieldActive == true
                    ? size.height * 0.43
                    : size.height * 0.8,
                width: size.width,
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        padding: const EdgeInsets.all(8),
                        itemCount: eachCommentWidget.length,
                        itemBuilder: (BuildContext context, index) {
                          return eachCommentWidget[index];
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //------------------------------------------------------------

            const Positioned(bottom: 2, child: CommentBoxAndButton()),
          ],
        ),
      ),
    );
  }
}

//------------------------------Comment Box And Button Widget----------------------------------------

class CommentBoxAndButton extends StatefulWidget {
  const CommentBoxAndButton({Key? key}) : super(key: key);

  @override
  State<CommentBoxAndButton> createState() => _CommentBoxAndButtonState();
}

class _CommentBoxAndButtonState extends State<CommentBoxAndButton> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        decoration: BoxDecoration(
          color: const Color.fromRGBO(230, 230, 230, 1),
          border: Border.all(
            color: const Color.fromRGBO(230, 230, 230, 1),
            width: 1.2,
          ),
        ),
        width: size.width,
        height: size.height / 9,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 255, 255, 1),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                border: Border.all(
                  color: const Color.fromRGBO(213, 216, 222, 1),
                  width: 2,
                ),
              ),
              width: size.width * 0.75,
              height: size.height / 20,
              child: TextFormField(
                controller: commentController,
                cursorColor: Colors.black45,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: Icon(
                    Icons.insert_emoticon_sharp,
                    color: Color.fromRGBO(158, 158, 158, 1),
                  ),
                  hintText: "Comment",
                  hintStyle: TextStyle(
                    fontFamily: 'Roboto',
                    color: Color.fromRGBO(117, 117, 117, 1),
                    fontSize: 16,
                    letterSpacing: 1.5,
                  ),
                  contentPadding: EdgeInsets.only(left: 10, top: 3),
                ),
              ),
            ),
            SizedBox(
              width: size.width / 7,
              height: size.height / 22,
              child: TextButton(
                onPressed: () {
                  //-----------------------------COMMENT----------------------------
                  print('Commented');
                  setState(
                    () {
                      comments.add(commentController.text);
                      eachCommentWidget.add(
                        CommentWidget(
                          comment: comments[eachCommentWidget.length],
                        ),
                      );
                      currentIndex = comments.length + 1;
                      // commentController.text = '';
                    },
                  );
                  commentController.clear();
                  //-----------------------------COMMENT----------------------------
                },
                child: const Text(
                  'Post',
                  style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
              ),
            )
          ],
        ));
  }
}

int currentIndex = 0;
List<String> comments = [
  '',
  // 'fdfcyhj fvi9er08i',
  // 'fdfc yhjfvi9 er08i gfc ad322932 njew908d',
];

List<Widget> eachCommentWidget = [
  CommentWidget(
    comment: comments[0],
  ),
];
