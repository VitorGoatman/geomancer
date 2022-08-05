from geomancy import sp,dp,Figure

type FigData* = tuple
  name: string
  fig: Figure
  min: string
  img: string
  keyword: string
  house: string
  color: string
  commentary:string
  divination:string
  sign: string
  planet: string
  quality: string
  inElement: string
  outElement:string

const
  Populus:FigData =
    (name:      "Populus",
    fig:        [dp,dp,dp,dp],
    min:        "::::",
    img:        "A crowd",
    keyword:    "Stability",
    house:      "Populus is strengthened in the fourth house and weakened in the tenth.",
    color:      "Sea green or dark russet brown",
    commentary: "Populus is a figure of dispersal and multiplicity, balancing the focused movement of Via. Its astrological symbols, the Moon, Cancer and Water, are all images of passivity, reflection, and indirect action; they represent patterns of experience that have no direction or focus of their own, but simply respond to energies coming from outside. The elemental structure of the figure shows all four elements as passive and latent, but the receptive nature of Water comes closest to expressing the figure's nature in elemental terms. Like a crowd, Populus has no particular motion or direction until it recieves the energy of another figure. Its stability is a function of sheer inertia, rather than of any special strength of its own.",
    divination: "Populus in a geomantic chart represents a gathering or assembly of people, or a large amount of anything else. A passive figure that takes on the qualities of the figures that interact with it, Populus tends to be fortunate with fortunate figures and unfortunate with unfortunate ones. Still it is usually favorable in matters that benefit from quiet reflection, and unfavorable in matters demanding focused action.",
    sign:       "Cancer",
    planet:     "Moon",
    quality:    "Stable",
    inElement:  "Water",
    outElement: "Water")
  Via:FigData =
    (name:      "Via",
    fig:        [sp,sp,sp,sp],
    min:        "....",
    img:        "A road",
    keyword:    "Change",
    house:      "Via is strengthened in the fourth house and weakened in the tenth",
    color:      "White, flecked with blue",
    commentary: "Via is a figure of directed movement and change, balancing the diffuse and formless stability of Populus. These two figures, like Fortuna Major and Fortuna Minor, share the same astrological symbol but have opposite elemental structures. Here, however, the opposition is between complete passivity and complete activity. With all four elements active, Via represents the elements in a constant state of change, each giving way to the next in an endless cycle. There is, however, a certain passive, reflective quality shared by these most opposite of figures. Despite the common figure of speech, roads actually go nowhere; it is the traveçers who follow them that go somewhere, leaving more of the road behind with each step.",
    divination: "Via in a geomantic reading represents change in all its forms, and favors all questions in which change is an advantage. It is favorable for journeys of all kinds, real and metaphorical, but unfavorable whenever leaving things unchanged is desirable.",
    sign:       "Cancer",
    planet:     "Moon",
    quality:    "Mobile",
    inElement:  "Water",
    outElement: "Water")
  Conjunctio:FigData =
    (name:      "Conjunctio",
    fig:        [dp,sp,sp,dp],
    min:        ":..:",
    img:        "A crossroads",
    keyword:    "Interaction",
    house:      "Conjunctio is strengthened in the sixth house and weakened in the twelfth.",
    color:      "Purple or pale gray, sometimes black speckled with blue",
    commentary: "Conjunctio is a figure of contact and union, balancing the isolated and limited figure Carcer. It represents the union of opposites on all levels and the resulting potentials for change. Here the astrological symbolism of Mercury, Virgo, and Earth ties into ancient magical images of fertility and the elemental structure is open to energy in the Fire line and to manifestation in the line of Earth. Air and Water, the active elements in this figure, are thought of in magical philosophy as middle realms uniting the two ends of the elemental spectrum; Air, the inner element of this figure, also has a role here as a symbol of interaction. Like a crossroads, Conjunctio forms a context in which movement can lead in unexpected directions, and bring energies and people on highly different trajectories into interaction.",
    divination: "Conjunctio in a geomantic chart shows the presence of a combination of forces. It tends to be favorable or unfavorable depending on other figures and circumstances, but is reliably favorable in any question about recovering things lost or stolen. It is traditionally a figure of temperance. It is favorable for matters in which things need to come into contact, and unfavorable for any situation that calls for solitude, separation, and clarification.",
    sign:       "Virgo",
    planet:     "Mercury",
    quality:    "Mobile",
    inElement:  "Air",
    outElement: "Earth")
  Carcer:FigData =
    (name:      "Carcer",
    fig:        [sp,dp,dp,sp],
    min:        ".::.",
    img:        "An enclosure",
    keyword:    "Isolation",
    house:      "Carcer is strengthened in the tenth house and weakened in the fourth",
    color:      "White, russet, or dun (pale brown)",
    commentary: "Carcer is a figure of restriction and isolation, balancing the open and interactive nature of Conjunctio. This pattern of meanings has two sides, for restriction can be a source of strength and focus as well as a limitation. This is shown in its astrological symbolism, for Saturn, Capricorn, and Earth establish an imagery of rigidity and fixation, but also one of energy expended in productive work. The elemental structure develops the same theme; Fire and Earth represent energy and material expression, but they also remain at the two ends of the elemental spectrum, unable to come into contact with each other because neither of the middle elements are there to bridge the gap.",
    divination: "Carcer in a geomantic chart represents solidity, restriction, binding, or even imprisonment. It always portends delay. In financial questions, it can stand for greed. It is unfavorable in most questions, but favors anything involving stability, security, and isolation.",
    sign:       "Capricorn",
    planet:     "Saturn",
    quality:    "Stable",
    inElement:  "Earth",
    outElement: "Earth")
  FortunaMajor:FigData =
    (name:      "Fortuna Major",
    fig:        [dp,dp,sp,sp],
    min:        "::..",
    img:        "A valley through which a river flows",
    keyword:    "Power",
    house:      "Fortuna Major is trengthened in the fifth house and weakened in the eleventh",
    color:      "Green, yellow, or gold",
    commentary: "Fortuna Major is a figure of inner strangth and resulting success, balancing the outer strength of Fortuna Minor. Its astrological symbols, the Sun, Leo, and Fire, are standard metaphorical images for strength and vitory, but its elemental structure leads in some unexpected directions. Fire and Air are passive in this figure, with Water and Earth active, and the inner element is Earth; like the valley that is its image, Fortuna Major represents a natural shape of events that brings success without apparent effort. Though we too often think of success as a matter of vigorous action and struggle, real success comes about because our inner life is reflected in our outer circumstances (as it always is, for good or ill) without any conscious effort at all. This is one of the central secrets of magic.",
    divination: "Fortuna Major in a geomantic chart foretells great good fortune, although the way there may be difficult at times. It is a figure of power and success that unfolds naturally rather than having to be forced, and is especially favorable whenever the querent wants to win something. It often predicts a difficult beginning leading to a very good result. Traditionally it is a figure of nobility. Fortuna Major is favorable for nearly all questions except those involving escaping from a difficult situation. the Fortuna Major response to difficulty is to press ahead, and make lemonade out of life's lemons.",
    sign:       "Leo",
    planet:     "Sun",
    quality:    "Stable",
    inElement:  "Earth",
    outElement: "Fire")
  FortunaMinor:FigData =
    (name:      "Fortuna Minor",
    fig:        [sp,sp,dp,dp],
    min:        "..::",
    img:        "A mountain with a staff atop it",
    keyword:    "Swiftness",
    house:      "Fortuna Minor is strengthened in the fifth house and weakened in the eleventh",
    color:      "Gold or yellow",
    commentary: "Fortuna Minor is a figure of outer strength and success, balancing the inner strength of fortuna Major. These two figures have the same astrological symbolism but the opposite elemental structure; they represent the same kind of experience—success—but have sharply different sources. Fortuna Minor represents success that is brought about by outside help or circumstances, rather than by the innate strength symbolized by Fortuna Major. Easily gained, the success of Fortuna Minor is just as easily lost, and it produces the best results in situations where rapid change is expected or desired. These factors are echoed in the symbolism by an unexpected shift in the outer element; Leo is a fiery sign, but Fortuna Minor is usually given the outer element of Air, representing the role of outside help in this figure as well as the instability of the results.",
    divination: "Fortuna Minor in a geomantic reading represents unstable success. It is traditionally a figure of inconstancy, and also of generosity, and warns that what you gain may not stay with you for long. It is very favorable whenever you want to proceed quickly, and unfavorable for matters in which fickleness or instability is a problem.",
    sign:       "Leo",
    planet:     "Sun",
    quality:    "Mobile",
    inElement:  "Fire",
    outElement: "Air")
  Acquisitio:FigData =
    (name:      "Acquisitio",
    fig:        [dp,sp,dp,sp],
    min:        ":.:.",
    img:        "A bag held mouth upward, as though to take something in",
    keyword:    "Gain",
    house:      "Acquisition is strengthened in the ninth house and weakened in the third",
    color:      "Red, yellow, or green",
    commentary: "Acquisitio is a figure of gain and success, balancing the imagery of loss in Amissio in its astrological symbolism, Jupiter is the traditional planet of good fortune, while Sagittarius, and Fire represent directed towards goals. Its inner element and elemental structure stress that real gain of any kind exists only in a web of interaction, and seeks productive manifestation; all the money in the world is useless if no one will accept it in exchange, or if it simply piles up untouched. The elemental structure also suggests the far from minor point that material gain, despite all its potential for interaction and material wealth, does not necessarily add up to the fulfillment of one's desires or the deepening of one's inner life.",
    divination: "Acquisitio in a geomantic reading foretells success, profit, and gain, and often means that something desired is within your grasp. Traditionally, Acquisitio is a figure of prudence. It represents gain in every sense, and favors any situation where gaining something is desired, It is unfavorable whenever loss is desired, such as illness, facing things you fear, and getting out of difficult situations.",
    sign:       "Sagittarius",
    planet:     "Jupiter",
    quality:    "Stable",
    inElement:  "Air",
    outElement: "Fire")
  Amissio:FigData =
    (name:      "Amissio",
    fig:        [sp,dp,sp,dp],
    min:        ".:.:",
    img:        "A bag held mouth downward, letting the contents fall out",
    keyword:    "Loss",
    house:      "Amissio is strengthened in the second house and weakened in the eighth",
    color:      "White,, fleckled with citrine (greenish yellow)",
    commentary: "Amissio is a figure of transience and loss, balancing Acquisitio's imagery of gain. Central to its meaning is a recognition of the hard truth that all things pass away. Its astrological symbols, Venus, Taurus, and Earth point toward desire for material things as one of the classic examples of impermanence in human life. Both the desire and the thing desired are certain to pass away in time, and so the experience of desire brings with it the certainty that the experience of loss will follow. Similarly, the elemental structure of the figure has Fire and Water alone; without Air to join them together or Earth to bring them into manifestation, these two opposed elements fly apart, and any contact between them is impermanent and without result.",
    divination: "In a geomantic reading Amissio stands for loss in every sense, positive or negative, from losing your heart to losing your money. It often represents something outside one's grasp. Traditionally this is also a figure of generosity. It is favorable in any matter where loss is what you desire; this includes such things as love and sexuality (losing your heart), recovery from sickness (losing your illness), facing things you fear (losing your fear), and getting out of difficult situations (losing your problems). It is unfavorable whenever you hope to gain something from the situation.",
    sign:       "Taurus",
    planet:     "Venus",
    quality:    "Mobile",
    inElement:  "Fire",
    outElement: "Earth")
  Tristitia:FigData =
    (name:      "Tristitia",
    fig:        [dp,dp,dp,sp],
    min:        ":::.",
    img:        "A pit, a stake driven downward",
    keyword:    "Sorrow",
    house:      "Tristitia is strengthened in the eleventh house and weakened in the fifth",
    color:      "Taway or sky blue",
    commentary: "Tristitia ia a figure of sorrow and difficulty, balancing the joyous symbolism of Laetitia. Its astrological symbolism is complex; Saturn has traditional links to ideas of pain and trouble, and these are reinforced by turbulent Air, but Aquarius carries meanings of creativity and benevolence that may seem hard to relate to the symbolism of Saturn. The elemental structure and inner element stress Earth to the exclusion of all else, and this may also seem hard to connect to the other astrological symbols. The deeper level of meaning where these paradoxes resolve is simply that suffering is the one sure source of wisdom; too often, it's only when we are \"stuck\", caught up in a painful situation we do not know how to resolve, that we learn to face the world in more creative ways.",
    divination: "In a geomantic reading, Tristitia stands for any downward movement. Lowered spirits (sorrow), lowered vitality (illness), and lowered expectations (failure) all fall within its ambit, though it can also mean stability and solidity, the sinking of roots deep into the ground. Unfavorable in most matters, it is favorable for questions involving stabilty and patience. It is very favorable in all questions dealing with building and the Earth , where its quality of \"stuckness\" or permanence is wanted and for any situation in which a secret needs to be kept.",
    sign:       "Aquarius",
    planet:     "Saturn",
    quality:    "Stable",
    inElement:  "Earth",
    outElement: "Air")
  Laetitia:FigData =
    (name:      "Laetitia",
    fig:        [sp,dp,dp,dp],
    min:        ".:::",
    img:        "A tower",
    keyword:    "Joy",
    house:      "Laetitia is strengthened in the twelfth house and weakened in the sixth",
    color:      "Glittering pale green",
    commentary: "Laetitia is a figure of joy, balancing the harsh symbolism of Tristitia. It represents happiness of every kind and level, from the most momentary of passing pleasures to the highest reaches of human experience. In its astrological symbolism, Jupiter has its usual role as the planet of good fortune, and watery Pisces and the outer element, Water, represent the emotional life, the context in which joy is usually experienced. The inner element and the elemental structure generally, however, stress the role of energy in the attainment of happyness; it is by way if the free flow of creative force, in ourselves as in the universe, that joy comes into being.",
    divination: "Laetitia in a geomantic reading is a very positive figure representing any form of ascent. It means upward movement, which is favorable in a querent's career (success), emotional state (happiness), or vitality (health). It is traditionally a figure of fortitude, and is thus favorable in most questions, but is unfavorable for any question in which stability and deep roots are needed, and very unfavorable when a secret needs to be kept.",
    sign:       "Pisces",
    planet:     "Jupiter",
    quality:    "Mobile",
    inElement:  "Fire",
    outElement: "Water")
  Rubeus:FigData =
    (name:      "Rubeus",
    fig:        [dp,sp,dp,dp],
    min:        ":.::",
    img:        "A goblet turned upside down",
    keyword:    "Passion",
    house:      "Rubeus is strengthened in the eighth house and weak in the second",
    color:      "Red, flecked or streaked with brown",
    commentary: "Rubeus is a figure of passion and involvement in life, balancing the abstract detachment of Albus. Its astrological symbols, Mars, Scorpio, and Water, are the standard images of passionate energy in the symbolic language of the heavens. Its inner element and the one active part of its elemental structure, however, are both Air. The lesson here is that passionate involvement in the world comes from focusing on how we relate to others and to the world itself. At its worst, this too easily becomes a blind intoxication with appearances, but it also has the potential to open way to a joyous participation in the experience of life.",
    divination: "Rubeus in a geomantic chart is a challenging figure that stands for passion, pleasure, fierceness, and violence. Old books on geomancy describe it as \"good in all that is evil and evil in all that is good.\" It is unfavorable in most situations, but favorable in questions involving sexuality, intoxicants, and violence.",
    sign:       "Scorpio",
    planet:     "Mars",
    quality:    "Mobile",
    inElement:  "Air",
    outElement: "Water")
  Albus:FigData =
    (name:      "Albus",
    fig:        [dp,dp,sp,dp],
    min:        "::.:",
    img:        "A goblet set upright",
    keyword:    "Peace",
    house:      "Albus is strengthened in the third house and weakened in the ninth",
    color:      "Brilliant white, flecked with red",
    commentary: "Albus is a figure of peace and detachment, balancing the passionate figure Rubeus its astrological symbols, Mercury, Gemini and Air, point to the way in which detachment has most often expressed itself in the Western world—the way of the intellect, which moves away from direct experience into abstract ideas. More deeply, though, Albus is a figure of Water, which is its only active line and also its inner element; it represents awareness caught up wholly in its own inner life and turned away from the action in the outer world of experience. In its highest form, this inward focus can lead the attentive mind to transcendence by ways of mysticism, but it can also become a retreat from life that ends in sterility, isolation, and madness.",
    divination: "Albus in a geomantic chart stands for peace, wisdom, and purity; it is generally a favorable figure, but often weak, and where it occurs, you may need to seek help from other people. It is traditionally a figure od chastity. Albus favors quiet progress and the use of intelligence, and is favorable in most business and financial questions, it is also favorable for beginnings. It is unfavorable in matters requiring courage and energy, or in any situation involving conflict or disruptive change.",
    sign:       "Gemini",
    planet:     "Mercury",
    quality:    "Stable",
    inElement:  "Water",
    outElement: "Air")
  Puella:FigData =
    (name:      "Puella",
    fig:        [sp,dp,sp,sp],
    min:        ".:..",
    img:        "A mirror; a female figure with exagerrated breasts",
    keyword:    "Harmony",
    house:      "Puella is strengthened in the seventh house and weakened in the first",
    color:      "White, flecked with green",
    commentary: "Puella is a figure of female sexual energy, balancing the masculine figure Puer. Puella is balanced and harmonious, but ambivalent. Its astrological symbols, Venus, Libra and Air, suggest polar opposites held together in harmony and interaction by way of love, while its ruling inner element Water suggests that its energies are turned within, into a reflective inner life. The elemental structure is the key to this figure; with purpose and energy, inner receptivity, and the stability of a material basis, Puella lacks only relationship and interaction to be complete. It seeks to unite with others, where its opposite Puer seeks only to be recieved—a distinction that has more than a little to say about the complexity of relationships between the sexes.",
    divination: "Puella in a geomantic reading stands for harmony and happiness that may not last indefinitely; it is a favorable figure in most questions, but fickle. It is especially favorable for questions involving love and relationship, and brings a positive answer to any question involving short-term happiness. Because of its fickleness, however, it is infavorable in any situation where permanence is wanted.",
    sign:       "Libra",
    planet:     "Venus",
    quality:    "Stable",
    inElement:  "Water",
    outElement: "Air")
  Puer:FigData =
    (name:      "Puer",
    fig:        [sp,sp,dp,sp],
    min:        "..:.",
    img:        "A sword; a male figure with exaggerated testicles",
    keyword:    "Energy",
    house:      "Puer is strengthened in the first house and weakened in the seventh",
    color:      "White, flecked with red",
    commentary: "Puer is a figure of male sexual energy, balancing the feminine figure Puella. Unstable and forceful, it represents conflict, sudden change, and transformation, with all the constructive and destructive aspects these imply. Its astrological symbolism, Mars, Aries, and Fire, carries forward this pattern of meaning. Its elemental lines and inner element, by contrast, point to a deeper level of interpretation: Puer posseses energy and purpose, interactions with others, and a material expression, but no receptive inner life. All the aspects of its nature are projected outward into the world of experience, as an act of creation or a source of delusion. Like a young warrior riding forth on a quest, it carries the spear of Fire, the sword of Air, and the disk or shield of Earth, but must seek the cup of Water elsewhere—an image that has more than a little to do with the inner meaning of the legendary quest for the Holy Grail.",
    divination: "Puer in a geomantic reading stands for passionate energy force, seeking, and sudden change are desirable, Puer can be favorable, though even there it can be problematic due to its unthinking nature. It is always unfavorable in matters where stability, prudence, and maturity are advantages.",
    sign:       "Aries",
    planet:     "Mars",
    quality:    "Mobile",
    inElement:  "Air",
    outElement: "Fire")
  CaputDraconis:FigData =
    (name:      "Caput Draconis",
    fig:        [dp,sp,sp,sp],
    min:        ":...",
    img:        "A doorway with footprints leading toward it",
    keyword:    "Beginning",
    house:      "Caput Draconis is strengthened in the sixth house and weakened in the twelfth",
    color:      "White, flecked with citrine",
    commentary: "Caput Draconis is a figure of opportunities and beginnings, balancing Cauda Draconis's symbolism of endings. As the geomantic equivalent of the north or ascending node of the Moon, Caput Draconis shares much of the same focus on drastic change as Cauda, but the north node—the point at which the Moon crosses the Sun's path into the northern heavens—shares some of the symbolism of Venus and Jupiter, the two benefics or positive forces in traditional astrology. This figure thus represents the change for the better, and is a particularly positive sign for beginnings. Earth, which is both its inner and outer element, and its elemental structure generally suggest fertile ground, needing only the energy of the seed and sunlight; still, much depends on the seed that is planted there.",
    divination: "In a geomantic reading, Caput Draconis represents beginnings and new possibilities. It tends to vary in meaning with its company, becoming more favorable with favorable figures and more unfavorable with unfavorable ones, but it often foretells a good result with some difficulty at the beginning. Caput Draconis is favorable in all matters having to do with beginnings, and unfavorable in questions where ending something is desirable.",
    sign:       "Virgo",
    planet:     "North Node of the Moon",
    quality:    "Stable",
    inElement:  "Earth",
    outElement: "Earth")
  CaudaDraconis:FigData =
    (name:      "Cauda Draconis",
    fig:        [sp,sp,sp,dp],
    min:        "...:",
    img:        "A doorway with footprints leading away from it",
    keyword:    "Ending",
    house:      "Cauda Draconis is strengthened in the ninth house and weakened in the third",
    color:      "Green, white, dark crimson, or pale tawny brown",
    commentary: "Cauda Draconis is a symbol of endings and completions, balancing the symbolism of beginnings in Caput Draconis. Its astrological symbolism is that of the south or descending node of the Moon—the point at which the Moon crosses the sun's path to go into the southern heavens. This point has some of the same symbolism as Mars and Saturn, the two malefics or negative forces in traditional astrology, and so Cauda Draconis symbolizes disruptions, losses, and endings. Its inner and outer elements are both Fire; the elemental structure, which lacks only Earth, suggests a situation nearing completion and thus ripe for radical change.",
    divination: "In a geomantic reading, Cauda Draconis represents ending, completion, and letting go of the past. A figure with a complex message, it brings good with evil and evil with good, but is traditionally a figure of generosity. It is favorable in any situation where something is coming to an end, but unfavorable for most other questions.",
    sign:       "Sagittarius",
    planet:     "South Node of the Moon",
    quality:    "Mobile",
    inElement:  "Fire",
    outElement: "Fire")
  Figures* = [
    Populus,Via,
    Conjunctio,Carcer,
    FortunaMAjor,FortunaMinor,
    Acquisitio,Amissio,
    Tristitia,Laetitia,
    Rubeus,Albus,
    Puella,Puer,
    CaputDraconis,CaudaDraconis]
