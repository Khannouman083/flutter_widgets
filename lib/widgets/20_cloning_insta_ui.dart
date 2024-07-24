import "package:flutter/material.dart";

class instaUI extends StatelessWidget {
  const instaUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
        backgroundColor: Colors.pink.shade400,
        title: const Text("Nouman Khan"),
        actions: const [
          Icon(Icons.add, color: Colors.black,),
          SizedBox(width: 10,),
          Icon(Icons.menu,color: Colors.black,),
          SizedBox(width: 10,),
          Icon(Icons.logout, color: Colors.black,),
          SizedBox(width: 10,),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 150,
            // color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 50,

                        backgroundImage: NetworkImage("https://scontent.fisb3-4.fna.fbcdn.net/v/t39.30808-6/311156317_798481264532776_2142121344972141205_n.jpg?stp=dst-jpg_s552x414&_nc_cat=102&ccb=1-7&_nc_sid=a5f93a&_nc_eui2=AeH5nuOTpGUtue9FCAV8FdsYHE1_UvlTiLocTX9S-VOIur9mQ9w-kR7q9ZMBFfOal-C9CJgG4sDD0gM_oKeDNWU9&_nc_ohc=yGs9V2e4b6sQ7kNvgErczJS&_nc_zt=23&_nc_ht=scontent.fisb3-4.fna&oh=00_AYCdovvgzNPBYOZ2rYMpzCVQxy2RLRsIDMDeFeaj52gc1Q&oe=669D7546"),
                      ),
                      Text("Nouman Khan", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
                myColumn("64", 'posts'),
                myColumn("227", 'followers'),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: myColumn("101", 'following'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.grey.shade300),
                      ),
                      onPressed: (){}, child: const Text("Edit profile", style: TextStyle(color: Colors.black),)),
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.grey.shade300),
                      ),
                      onPressed: (){}, child: const Text("Share profile",style: TextStyle(color: Colors.black))),
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.grey.shade300),
                      ),
                      onPressed: (){}, child: const Icon(Icons.add_to_photos, color: Colors.black,))
                ],
              ),
            ),
          ),
          SizedBox(
            height: 100,
            // color: Colors.blue,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
                itemBuilder: (context,index){
                  return const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.black,
                          backgroundImage: NetworkImage("https://scontent.fisb3-4.fna.fbcdn.net/v/t39.30808-6/286944790_726367195077517_6652059552796798262_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=a5f93a&_nc_eui2=AeF8fOb9iy9uilXQEDDMq_RYUq5dhZn5oz9Srl2FmfmjPwkjVkGVvWoyR5iaufhZcApeQ5fXoh60ExGezV5RekQw&_nc_ohc=oEvqIAHdedsQ7kNvgFGYn3e&_nc_zt=23&_nc_ht=scontent.fisb3-4.fna&oh=00_AYAcQzoTfZzIMvuXPpReTWqgRryoTu4TUzvezvtEfW_pvA&oe=669D4891"),
                        ),
                        SizedBox(width: 10,)
                      ],
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 50,
            // color: Colors.teal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(

                    onPressed: (){}, child: const Icon(Icons.grid_3x3, color: Colors.black,)),
                TextButton(

                    onPressed: (){}, child: const Icon(Icons.video_chat,color: Colors.black,)),
                TextButton(

                    onPressed: (){}, child: const Icon(Icons.person, color: Colors.black,))
              ],
            ),
          ),
          Expanded(
            child: Container(
              // color: Colors.orange,
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                  itemBuilder: (context,index){
                    return Container(
                      margin: const EdgeInsets.all(2),
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                        image: DecorationImage(image: NetworkImage("https://scontent.fisb3-3.fna.fbcdn.net/v/t39.30808-6/277148854_672520397128864_5159501390122077096_n.jpg?stp=dst-jpg_s552x414&_nc_cat=108&ccb=1-7&_nc_sid=a5f93a&_nc_eui2=AeFjlXb_9hL8vAVQKInO8Fz7XmZdMpXRxgheZl0yldHGCP5dl3Dn2bskEbnaeEmf_-4PKAyVq2EMnGZuwpRHlfJo&_nc_ohc=4CO35tQqzMYQ7kNvgGiGfHE&_nc_zt=23&_nc_ht=scontent.fisb3-3.fna&oh=00_AYAimpLdAqsXCPY3uQdOwO0GOYY-j1F13OkhNceObVq_7A&oe=669D46F2"))
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );

  }
  Widget myColumn (String text1, String text2){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text1,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        Text(text2,style: const TextStyle(fontSize: 18,),)
      ],
    );
  }
}
