import 'package:airbnbclone/models/explore_model.dart';
import 'package:airbnbclone/models/host_model.dart';
import 'package:airbnbclone/models/offers.dart';
import 'package:airbnbclone/models/reviews.dart';
import 'package:airbnbclone/models/services.dart';
import 'package:flutter/material.dart';

/// Mock data for explore page
List<ExploreModel> exploreDummyData = <ExploreModel>[
  ExploreModel(
      images: [
        'https://mir-s3-cdn-cf.behance.net/project_modules/fs/2d618560510703.5a4f89ff99f96.jpg',
        'https://mir-s3-cdn-cf.behance.net/project_modules/fs/ce454d60510703.5a4f89ff9a669.jpg',
        'https://mir-s3-cdn-cf.behance.net/project_modules/1400_opt_1/1759a563049917.5aa43b218021b.jpg'
      ],
      fullName: 'Santec, Bretagne, France',
      distance: 'Near Plage de Dossen',
      availableTime: 'Dec 11 - 17',
      price: r'$291',
      rate: 4.92,
      isFav: false,
      nameDescription: 'Contemorary villa facing the sea',
      isSuperHost: true,
      hostModel: HostData(
        hostBy: 'Marie-laure',
        placeType: 'Enter home',
        guests: 6,
        bedRoom: 3,
        bed: 3,
        sharedBath: 2,
        language: [],
        content:
            'Marie-laure is a Superhost/n Superhost are experienced, highly rated hosts who are committed to providing great stays for guests.',
        responseTime: 'within a day',
        responseRate: 100,
        responsePolicy: '',
      ),
      aboutPlace:
          'Magnifcent villa, warm, south-west facing, on the beach, enjoying an exceptional view',
      aboutCountry: 'Santec, Bretagne, France',
      location: [48.703, 4.024],
      offers: [
        Offers(name: 'Bay view', image: Icons.account_balance_wallet_sharp),
        Offers(name: 'Public or shared beach acess', image: Icons.beach_access),
        Offers(name: 'Kitchen', image: Icons.kitchen),
        Offers(name: 'Wifi', image: Icons.wifi),
        Offers(name: 'Free parking on permises', image: Icons.car_repair),
        Offers(name: 'TV', image: Icons.tv_rounded),
        Offers(name: 'Carbon monoxide alarm', image: Icons.location_disabled),
        Offers(name: 'Smoke alarm', image: Icons.smoke_free_outlined),
      ],
      reviews: [
        Reviews(
          name: 'Oli',
          time: '2 weeks ago',
          image:
              'https://static.remove.bg/remove-bg-web/221525818b4ba04e9088d39cdcbd0c7bcdfb052e/assets/start-1abfb4fe2980eabfbbaaa4365a0692539f7cd2725f324f904565a9a744f8e214.jpg',
          description:
              "Marie's place has the perfect location with breathtaking views. The pictures don't make it justice! The house is big, beach front, very well equipped. We loved our stay for full week,",
        ),
        Reviews(
          name: 'Anna',
          time: '4 weeks ago',
          image:
              'https://d5nunyagcicgy.cloudfront.net/external_assets/hero_examples/hair_beach_v391182663/original.jpeg',
          description:
              'A beautiful house in a quiet location off the beaten track. Very well equipped and great communication by Marie-Laure. We enjoyed our stay very much.',
        ),
      ],
      additionServices: [
        Services(
          title: 'Marie-Laure is a Superhost',
          image: Icons.supervised_user_circle_rounded,
          description:
              'Superhosts are experienced, highly rated hosts who are committed to providing great stays for guests.',
        ),
        Services(
          title: 'Great location',
          image: Icons.key,
          description:
              '95% of recent guests gave the location a 5-star rating.',
        ),
        Services(
          title: 'Free cancellation for 48 hours.',
          image: Icons.calendar_today_outlined,
          description: '',
        ),
      ],
      rules: 'Check-in 4:00 PM - 8:00 PM',
      health:
          "Airbnb's COVID-19 saftey practices apply.\nCarbon monoxide alarm not reported",
      policy:
          "Free cancellation for 48 hours.\nReviews the Host's full cancellation policy which applies even if you cancel for illness or disruptions caused by COVID-19"),
  ExploreModel(
      images: [
        'https://cdn.lecollectionist.com/lc/production/uploads/photos/house-1910/2018-04-30-214088d759242733859024dd8690041f.jpg?q=65',
        'https://mir-s3-cdn-cf.behance.net/project_modules/fs/ce454d60510703.5a4f89ff9a669.jpg',
        'https://mir-s3-cdn-cf.behance.net/project_modules/fs/2d618560510703.5a4f89ff99f96.jpg',
      ],
      fullName: 'Santec, Bretagne, France',
      distance: 'Near Plage de Dossen',
      availableTime: 'Dec 11 - 17',
      price: r'$291',
      rate: 4.92,
      isFav: false,
      nameDescription: 'Contemorary villa facing the sea',
      isSuperHost: true,
      hostModel: HostData(
        hostBy: 'Marie-laure',
        placeType: 'Enter home',
        guests: 6,
        bedRoom: 3,
        bed: 3,
        sharedBath: 2,
        language: [],
        content:
            'Marie-laure is a Superhost/n Superhost are experienced, highly rated hosts who are committed to providing great stays for guests.',
        responseTime: 'within a day',
        responseRate: 100,
        responsePolicy: '',
      ),
      aboutPlace:
          'Magnifcent villa, warm, south-west facing, on the beach, enjoying an exceptional view',
      aboutCountry: 'Santec, Bretagne, France',
      location: [48.703, 4.024],
      offers: [
        Offers(name: 'Bay view', image: Icons.account_balance_wallet_sharp),
        Offers(name: 'Public or shared beach acess', image: Icons.beach_access),
        Offers(name: 'Kitchen', image: Icons.kitchen),
        Offers(name: 'Wifi', image: Icons.wifi),
        Offers(name: 'Free parking on permises', image: Icons.car_repair),
        Offers(name: 'TV', image: Icons.tv_rounded),
        Offers(name: 'Carbon monoxide alarm', image: Icons.location_disabled),
        Offers(name: 'Smoke alarm', image: Icons.smoke_free_outlined),
      ],
      reviews: [
        Reviews(
          name: 'Oli',
          time: '2 weeks ago',
          image:
              'https://static.remove.bg/remove-bg-web/221525818b4ba04e9088d39cdcbd0c7bcdfb052e/assets/start-1abfb4fe2980eabfbbaaa4365a0692539f7cd2725f324f904565a9a744f8e214.jpg',
          description:
              "Marie's place has the perfect location with breathtaking views. The pictures don't make it justice! The house is big, beach front, very well equipped. We loved our stay for full week,",
        ),
        Reviews(
          name: 'Anna',
          time: '4 weeks ago',
          image:
              'https://d5nunyagcicgy.cloudfront.net/external_assets/hero_examples/hair_beach_v391182663/original.jpeg',
          description:
              'A beautiful house in a quiet location off the beaten track. Very well equipped and great communication by Marie-Laure. We enjoyed our stay very much.',
        ),
      ],
      additionServices: [
        Services(
          title: 'Marie-Laure is a Superhost',
          image: Icons.supervised_user_circle_rounded,
          description:
              'Superhosts are experienced, highly rated hosts who are committed to providing great stays for guests.',
        ),
        Services(
          title: 'Great location',
          image: Icons.key,
          description:
              '95% of recent guests gave the location a 5-star rating.',
        ),
        Services(
          title: 'Free cancellation for 48 hours.',
          image: Icons.calendar_today_outlined,
          description: '',
        ),
      ],
      rules: 'Check-in 4:00 PM - 8:00 PM',
      health:
          "Airbnb's COVID-19 saftey practices apply.\nCarbon monoxide alarm not reported",
      policy:
          "Free cancellation for 48 hours.\nReviews the Host's full cancellation policy which applies even if you cancel for illness or disruptions caused by COVID-19"),
  ExploreModel(
    images: [
      'https://media.inmobalia.com/imgV1/B8vEv5Xh_VThvnEqMx4G0ZxU~~H0Ar_8Bn_AfAx~4dnt796zQ9QIPwzdr9PkzIdRpbOaIUG6rQkTUfRM4VBt~CJs4XmwvxWZlKaKEqqp0biWJFMs_pNikt0_qWe9bAS6nmHkSf61K6d4WlnYp9C1FgSA0PbXcXn1WSGLVN2t7D6AOA4hyMB1qUz1gpG4e3KOCD~QrnZvOyXpgfR9TPcSILg3GN5DFjPYpeZqeLCFGAvMfe414itmEDW8JeWeRSkNespuJClyp47kA7WrRXCTsp1XkQMw7GrqU88hKXYrQaPE5FKRE31WgQ7y4hfasEtcN9qBR6Y6hMBu.jpg',
      'https://mir-s3-cdn-cf.behance.net/project_modules/fs/2d618560510703.5a4f89ff99f96.jpg',
      'https://mir-s3-cdn-cf.behance.net/project_modules/fs/ce454d60510703.5a4f89ff9a669.jpg',
    ],
    fullName: 'Santec, Bretagne, France',
    distance: 'Near Plage de Dossen',
    availableTime: 'Dec 11 - 17',
    price: r'$291',
    rate: 4.92,
    isFav: false,
    nameDescription: 'Contemorary villa facing the sea',
    isSuperHost: true,
    hostModel: HostData(
      hostBy: 'Marie-laure',
      placeType: 'Enter home',
      guests: 6,
      bedRoom: 3,
      bed: 3,
      sharedBath: 2,
      language: [],
      content:
          'Marie-laure is a Superhost/n Superhost are experienced, highly rated hosts who are committed to providing great stays for guests.',
      responseTime: 'within a day',
      responseRate: 100,
      responsePolicy: '',
    ),
    aboutPlace:
        'Magnifcent villa, warm, south-west facing, on the beach, enjoying an exceptional view',
    aboutCountry: 'Santec, Bretagne, France',
    location: [48.703, 4.024],
    offers: [
      Offers(name: 'Bay view', image: Icons.account_balance_wallet_sharp),
      Offers(name: 'Public or shared beach acess', image: Icons.beach_access),
      Offers(name: 'Kitchen', image: Icons.kitchen),
      Offers(name: 'Wifi', image: Icons.wifi),
      Offers(name: 'Free parking on permises', image: Icons.car_repair),
      Offers(name: 'TV', image: Icons.tv_rounded),
      Offers(name: 'Carbon monoxide alarm', image: Icons.location_disabled),
      Offers(name: 'Smoke alarm', image: Icons.smoke_free_outlined),
    ],
    reviews: [
      Reviews(
        name: 'Oli',
        time: '2 weeks ago',
        image:
            'https://static.remove.bg/remove-bg-web/221525818b4ba04e9088d39cdcbd0c7bcdfb052e/assets/start-1abfb4fe2980eabfbbaaa4365a0692539f7cd2725f324f904565a9a744f8e214.jpg',
        description:
            "Marie's place has the perfect location with breathtaking views. The pictures don't make it justice! The house is big, beach front, very well equipped. We loved our stay for full week,",
      ),
      Reviews(
        name: 'Anna',
        time: '4 weeks ago',
        image:
            'https://d5nunyagcicgy.cloudfront.net/external_assets/hero_examples/hair_beach_v391182663/original.jpeg',
        description:
            'A beautiful house in a quiet location off the beaten track. Very well equipped and great communication by Marie-Laure. We enjoyed our stay very much.',
      ),
    ],
    additionServices: [
      Services(
        title: 'Marie-Laure is a Superhost',
        image: Icons.supervised_user_circle_rounded,
        description:
            'Superhosts are experienced, highly rated hosts who are committed to providing great stays for guests.',
      ),
      Services(
        title: 'Great location',
        image: Icons.key,
        description: '95% of recent guests gave the location a 5-star rating.',
      ),
      Services(
        title: 'Free cancellation for 48 hours.',
        image: Icons.calendar_today_outlined,
        description: '',
      ),
    ],
    rules: 'Check-in 4:00 PM - 8:00 PM',
    health:
        'Airbnb COVID-19 saftey practices apply.\nCarbon monoxide alarm not reported',
    policy:
        "Free cancellation for 48 hours.\nReviews the Host's full cancellation policy which applies even if you cancel for illness or disruptions caused by COVID-19",
  ),
];
