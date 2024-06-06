
import 'package:thecasinoclub/export/export.dart';
ValueNotifier<List<Map<String, String? >>> userDetails = ValueNotifier([]);
class ProfileImageWidget extends StatefulWidget {
  const ProfileImageWidget({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  State<ProfileImageWidget> createState() => _ProfileImageWidgetState();
}

class _ProfileImageWidgetState extends State<ProfileImageWidget> {
  
  final _formKey = GlobalKey<FormState>();
  String? _profilePicturePath;
  XFile? image;
  final usernameController = TextEditingController();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  

 

  handleSaveButtonPress(BuildContext context){
    if(_formKey.currentState?.validate() ?? false){
      String username = usernameController.text;
      String name = nameController.text;
      String password = passwordController.text;

      Map<String, String> userDetailsMap = {
      'username': username,
      'name': name,
      'password': password,
    };
    // Add the map to userDetails list
   
    userDetails.value =[
      userDetailsMap,
    ];

    // Clear the text fields after adding the user details
    usernameController.clear();
    nameController.clear();
    passwordController.clear();

    Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width / 2.5,
      height: widget.height / 2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.amber,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              buttomSheet(context);
            },
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: _profilePicturePath != null?
                  FileImage(File(_profilePicturePath!)):null,
                  child: _profilePicturePath == null?
                const  Icon(Icons.person):null,
                ),
               const Positioned(
                  left: 60,
                  top: 70,
                  child: CircleAvatar(
                    radius: 15,
                    child: Icon(Icons.add),
                  ),
                )
              ],
            ),
          ),
          const CustomTextWidget(text: "Aneesh"),
          InkWell(
            onTap: () {
              editButtomSheet(context);
            },
            child: CustomButtomCommon(
              width: widget.width,
              height: widget.height,
              textValue: "Edit",
              heightNeeded: 35,
              widthNeeded: 4,
              colorNeeded: Colors.redAccent,
            ),
          ),
        ],
      ),
    );
  }

  editButtomSheet(BuildContext context){
    showBottomSheet(context: context, builder: (context) {
      return SizedBox(
        width: double.infinity,
        height: 500,
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:   [
             const Icon(Icons.arrow_drop_down),
            const  Text("Edit Details"),
              CustomTextEditField(height: 800,width: 320,
              controller: usernameController,label: 'username',),
              CustomTextEditField(height: 800,width: 320,controller: nameController, label: 'name',),
              CustomTextEditField(height: 800,width: 320,controller: passwordController,label: 'password',),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      handleSaveButtonPress(context);
                    },
                    child:const CustomButtomCommon(height: 100,width: 200,heightNeeded: 2,widthNeeded: 2,textValue: "save",)),
                 const CustomButtomCommon(height: 100,width: 200,heightNeeded: 2,widthNeeded: 2,textValue: "clear",),
                ],
              )
          
            ],
          ),
        ),
      );
    },);
  }

  buttomSheet(BuildContext context) {
    showBottomSheet(
      context: context,
      builder: (context) {
        return SizedBox(
          height: 150,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            const  Text("Select the image source"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton.icon(
                    onPressed: () async {
                      XFile? img = await ImagePicker()
                          .pickImage(source: ImageSource.camera);
                      setState(() {
                        image = img;
                      });
                      _profilePicturePath = image!.path;
                      Navigator.pop(context);
                    },
                    label:const Text('Camera'),
                    icon:const Icon(Icons.camera),
                  ),
                  TextButton.icon(
                    onPressed: () async {
                      XFile? img = await ImagePicker()
                          .pickImage(source: ImageSource.gallery);
                      setState(() {
                        image = img;
                      });
                      _profilePicturePath = image!.path;
                      Navigator.pop(context);
                    },
                    label:const Text('Gallery'),
                    icon:const Icon(Icons.photo),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
