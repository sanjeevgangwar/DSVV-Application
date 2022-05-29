import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';

class AboutUsLandingPage extends StatefulWidget {
  const AboutUsLandingPage({Key? key}) : super(key: key);

  @override
  State<AboutUsLandingPage> createState() => _AboutUsLandingPageState();
}

class _AboutUsLandingPageState extends State<AboutUsLandingPage> {
  List<String> imag = [
    "assets/images/mata/mata.jpg",
    "assets/images/mata/mata2.jpg",
    "assets/images/mata/mata3.jpg",
    "assets/images/mata/mata4.jpg",
  ];

  List<String> imageList = [
    "assets/images/guru/Guru.jpg",
    "assets/images/guru/guru1.jpg",
    "assets/images/guru/Guru2.jpg",
    "assets/images/guru/Guru3.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.white,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.orange,
        title: const Text(
          "Courses",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: false,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/notification.svg",
            ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.grey.shade300.withOpacity(1),
                Colors.grey.shade200.withOpacity(1),
                Colors.grey.shade100.withOpacity(1),
                Colors.grey.shade50.withOpacity(1),
              ]),
        ),
        child: SingleChildScrollView(
          child: Column(children: <Widget>[
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 40.0,
              ),
            ),
            CarouselSlider(
                items: imageList
                    .map((e) => ClipRRect(
                          borderRadius: BorderRadius.circular(6),
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Image.asset(
                                e,
                                height: 200,
                                width: 100,
                                fit: BoxFit.fitHeight,
                              ),
                            ],
                          ),
                        ))
                    .toList(),
                options: CarouselOptions(
                  autoPlay: true,
                  enableInfiniteScroll: false,
                  enlargeCenterPage: true,
                  height: 200,
                )),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.blue,
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.grey.shade300.withOpacity(1),
                      Colors.grey.shade200.withOpacity(1),
                      Colors.grey.shade100.withOpacity(1),
                      Colors.grey.shade50.withOpacity(1),
                    ]),
              ),
              child: Column(children: <Widget>[
                // Why DSVV Heading Start
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 20.0),
                  child: Container(
                    padding: const EdgeInsets.only(left: 10.0),
                    decoration: const BoxDecoration(
                      border: Border(
                        left: BorderSide(
                            color: Colors.orange,
                            style: BorderStyle.solid,
                            width: 4.0),
                      ),
                    ),
                    child: Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: 40.0),
                            ),
                            Text(
                              'PATRON',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontFamily: 'Timesroman',
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              'FOUNDER',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontFamily: 'Timesroman',
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 15.0),
                ),

                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "Pt. Shriram Sharma Acharya (1911-1990)",
                    style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'Timesroman',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "● Founder of Global Gayatri Pariwar Fraternity, which has 150 million members and 5000 centers worldwide.\n● Siddha Sadhak of Gayatri Mahavidya\n● Author of nearly 3400 books on almost all aspects of Human life\n● Interpreter of Entire Vedic Scripture – Vedas, Puranas, Upanishads\n● Pioneer of Scientific Spirituality\n● Propagator of Thought Transformation Movement\n● Distinguished Freedom Fighter\n● Visionary and Architect of a New Era for Mankind",
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'Timesroman',
                    ),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "Pt. Shri Ram Sharma Acharya,\nA Pioneer Of Spiritual Renaissance",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "Pt. Shri Ram Sharma Acharya was born on 20th September 1911, at Awalkheda, in Agra District. Since his childhood, he had such a keen and unswerving inclination towards spirituality that was very uncommon for the children of his age. He scrupulously carried out the biddings of his Guru, a Great Himalayan Yogi, who appeared to him in his prayer cell, when he was 15 years of age. He predicted the golden future for mankind and gave an optimistic vision to his disciples. In the long, slow, tedious and meandering march of evolution of human consciousness, culture and civilizations over the millennium, it has been only on rare turning points that an ‘Avatar’- like multifaceted genius with superhuman attributes has appeared on the human scene to raise human consciousness to a higher nobler plane.",
                    style: TextStyle(fontSize: 22, fontFamily: 'Timesroman'),
                  ),
                ),

                const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "The Saint-Scholar-Philosopher Pandit Shri Ram Sharma Acharya",
                      style: TextStyle(
                          fontSize: 22,
                          fontFamily: 'Timesroman',
                          fontWeight: FontWeight.bold),
                    )),

                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "He endeavored 24 Mahapurushcharans of Gayatri Mahamantra; took part in the non- violent struggle for India’s independence as a volunteer; went to jail a number of times as part of the freedom struggle, and embarked upon the task of social and moral upliftment through spiritual means with the blessings of Mahatama Gandhi. The Saint-Scholar-Philosopher Pandit Shri Ram Sharma Acharya, undoubtedly, belongs to this small rare group of divine vibhutis.",
                    style: TextStyle(fontSize: 22, fontFamily: 'Timesroman'),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "The Foremost Collaborator And Discipline Of Gurudev Acharyashri",
                    style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'Timesroman',
                        fontWeight: FontWeight.bold),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "Adorable Mata Bhagwati Devi, revered to be an incarnation of the Shakti of Mother Goddess Durga by the Gayatri Pariwar, has been the foremost collaborator and discipline of Gurudev Acharyashri (known as Gurudev by the disciples). She contributed the most in giving concrete shape to the ideas and dreams of her Soul-mate",
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'Timesroman',
                    ),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "A Sage, A Visionary, A Social Reformer, Pt. Shri Ram Sharma Acharya",
                    style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'Timesroman',
                        fontWeight: FontWeight.bold),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "He translated the entire Vedic Vangmaya in lucid Hindi with eloquent comprehensive introductions and accomplished a feat of writing more than 3,200 enlightening books in Hindi on all aspects of life. His writings encompass far reaching, sagacious and feasible solutions to the innumerable problems of today. The Gayatri Pariwar fraternity, Shantikunj Ashram (the headquarters of Gayatri Pariwar), an academy of moral and spiritual awakening; Brahmvarchas Research Institute which strives to synthesize science with spirituality, Akhand Jyoti Sansthan, Mathura, Gayatri Tapobhoomi, Mathura and thousands of social reform and sadhna centers (shakti peeths) around the globe are other grand contributions of Pt. Shri Ram Sharma Acharya to the modern world.",
                    style: TextStyle(fontSize: 22, fontFamily: 'Timesroman'),
                  ),
                ),

                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.grey.shade300.withOpacity(1),
                          Colors.grey.shade200.withOpacity(1),
                          Colors.grey.shade100.withOpacity(1),
                          Colors.grey.shade50.withOpacity(1),
                        ]),
                  ),
                  child: SingleChildScrollView(
                    child: Column(children: <Widget>[
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          top: 40.0,
                        ),
                      ),
                      CarouselSlider(
                          items: imag
                              .map((e) => ClipRRect(
                                    borderRadius: BorderRadius.circular(6),
                                    child: Stack(
                                      fit: StackFit.expand,
                                      children: [
                                        Image.asset(
                                          e,
                                          height: 200,
                                          width: 100,
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ],
                                    ),
                                  ))
                              .toList(),
                          options: CarouselOptions(
                            autoPlay: true,
                            enableInfiniteScroll: false,
                            enlargeCenterPage: true,
                            height: 200,
                          )),
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          "A Seer And A Great Devotee of Gayatri",
                          style: TextStyle(
                              fontSize: 22,
                              fontFamily: 'Timesroman',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          "Millions of people in India and abroad have been kindled with missionary enthusiasm and zeal to transform their own lives and the society as a whole in the light of Pt. Shri Ram’s message. As a futurologist, Shri Ram had demonstrated unique ability to predict the future. During the last decade, when the “cold war” was at its zenith, he had accurately fore-told about the impossibility of a third world war, nuclear non-proliferation and failure of the star-war program. Some of his predications of global importance have also come true and have been highlighted in his literature.Shri Ram Sharma, a great devotee of Gayatri, lived an ideal life for 80 years and voluntarily shed his physical sheath on Gayatri Jayanti, 2nd june 1990. Lessons and teachings of Shri Ram Sharma are the doctrine of future religion on which rests the emergence of all-round peace, happiness and bright future. He has given some basic formulae for changing and reforming individuals, families and the society. They motivate us to concentrate on self reformation rather than on giving advice to others.",
                          style: TextStyle(
                            fontSize: 22,
                            fontFamily: 'Timesroman',
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}
