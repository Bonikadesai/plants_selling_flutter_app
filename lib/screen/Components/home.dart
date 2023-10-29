import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            //gardening
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Gardening",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xff4A4A4A),
                  ),
                ),
                Text(
                  "Starts from 149 INR",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    //fontSize: 14,
                    color: Color(0xff6F6F6F),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 75,
                      width: 75,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2TT_AsD5-HuPAnn65FP93WW-Nua0cdfC1jfVpdC5oyVJUqch8CLopVHfbDX2zB0GKCFI&usqp=CAU",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 75,
                      width: 75,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdvf8sEW_Z_An07krPp08o0J1MjBL9HxZQM_RM_VMzld1N6W70OPgB3bCIv_ON61XkSi0&usqp=CAU",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 75,
                      width: 75,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnx9X-Ytcudy2RfQ9m0368cljj6IfyUuOPyfptDINkYnb9O-abMMc6qRWGrg5gaiAlZTo&usqp=CAU",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 40,
                  width: 80,
                  color: Color(0xffDDF8D7),
                  child: Center(
                    child: Text(
                      "View More",
                      style: TextStyle(
                        color: Color(0xff57B86A),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            //plants
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Plants",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color(0xff4A4A4A),
                      ),
                    ),
                    Text(
                      "We offer Free plants every season",
                      style: TextStyle(
                        //fontSize: 20,
                        color: Color(0xff939292),
                      ),
                    ),
                  ],
                ),
                Text(
                  "Starts from 399 INR",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    //fontSize: 14,
                    color: Color(0xff6F6F6F),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 75,
                      width: 75,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-jME-KSEuK2sFFCiHvXRwAg9Du-jvl2TfwQYjrshsVBAtT9PCBkWTMBbKPofApuz59KA&usqp=CAU",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 75,
                      width: 75,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGNs0J2MzBKXzAh9o5u9EIeUpMKkr4H4Bi6A&usqp=CAU",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 75,
                      width: 75,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://www.ugaoo.com/cdn/shop/files/Aimage_3.jpg?v=1682523121",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 40,
                  width: 80,
                  color: Color(0xffDDF8D7),
                  child: Center(
                    child: Text(
                      "View More",
                      style: TextStyle(
                        color: Color(0xff57B86A),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            //seeds
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Seeds",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xff4A4A4A),
                  ),
                ),
                Text(
                  "Starts from 199 INR",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    //fontSize: 14,
                    color: Color(0xff6F6F6F),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 75,
                      width: 75,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://cdn.britannica.com/21/191621-050-33DE8F4F/Pecan-nuts-tree.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 75,
                      width: 75,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6bF4-FRMyALHpByPTnJO3pwflu3WkJq68Hw&usqp=CAU",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 75,
                      width: 75,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://m.media-amazon.com/images/I/71zwaorCqeS._AC_UF350,350_QL80_.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 40,
                  width: 80,
                  color: Color(0xffDDF8D7),
                  child: Center(
                    child: Text(
                      "View More",
                      style: TextStyle(
                        color: Color(0xff57B86A),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Stack(children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://media.cnn.com/api/v1/images/stellar/prod/210412105254-gardeningbeginnerslead.jpg?q=x_0,y_0,h_1406,w_2500,c_fill/h_720,w_1280"),
                  ),
                ),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black.withOpacity(0.5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Want to learn Gardening",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Explore Our Blog for Tips & Tricks",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 40,
                          width: 80,
                          color: Color(0xffDDF8D7),
                          child: Center(
                            child: Text(
                              "View Blog",
                              style: TextStyle(
                                color: Color(0xff57B86A),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
