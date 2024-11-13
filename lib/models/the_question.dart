class Question {
  const Question({required this.thequestion, required this.answer});
  final String thequestion;
  final List<String> answer;
}

const List<Question> earthquakeQuestion = [
  Question(
      thequestion:
          'What should you do if you are in a car during an earthquake?',
      answer: [
        'Pull over and stop.',
        'Continue driving.',
        'Speed up to get away from the area.',
        'Park under an overpass.'
      ]),
  Question(
      thequestion:
          'What is the best action to take if you are outdoors during an earthquake?',
      answer: [
        'Stay outdoors away from buildings.',
        'Run indoors to find shelter.',
        'Lie down on the ground.',
        'go the nearest building'
      ]),
  Question(
      thequestion:
          'If you are in bed during an earthquake, what is the recommended action? ',
      answer: [
        'Turn face down and cover your head and neck with a pillow.',
        'Get out of bed and stand in the doorway.',
        'Sit up and wait for the shaking to stop.',
        'Move to another room.'
      ]),
  Question(
      thequestion:
          'When taking cover during an earthquake, what is the best course of action if no sturdy table or desk is nearby?',
      answer: [
        'Crawl next to an interior wall, away from windows.',
        'Stand in a doorway.',
        'Run outside to open space.',
        'Lie down flat on the floor.'
      ]),
  Question(
      thequestion: 'What should you do if you feel an aftershock?',
      answer: [
        'Be ready to Drop, Cover, and Hold On.',
        'Run outside immediately.',
        'Stay in bed and cover your head.',
        'Continue with your normal activities.'
      ]),
  Question(
      thequestion:
          'What is the recommended action if you are in a damaged building after an earthquake?',
      answer: [
        'Go outside and quickly move away from the building.',
        'Stay inside and find a safe spot.',
        'Check the structural integrity of the building.',
        'Move to the roof.'
      ]),
  Question(
      thequestion:
          'What is the best course of action if you are in an area that may experience tsunamis?',
      answer: [
        'Go inland or to higher ground immediately after the shaking stops.',
        'Stay where you are.',
        'Move closer to the shore to observe.',
        'Take shelter in a building.'
      ]),
  Question(
      thequestion:
          'What should you use to stay updated with emergency information after ensuring your safety?',
      answer: [
        'Battery-operated radio, TV, social media, or cell phone text alerts.',
        'Talking to neighbors.',
        'Waiting for government officials to arrive.',
        'Reading the newspaper.'
      ]),
  Question(
      thequestion:
          'Which method of communication is likely more reliable than phone calls after a disaster?',
      answer: [
        'Text messages.',
        'Emails.',
        'Social media posts.',
        'Landline calls.'
      ]),
  Question(
      thequestion:
          'What precautions should you take when cleaning up after a disaster?',
      answer: [
        'Wear protective clothing and do not try to remove heavy debris by yourself.',
        'Clean up immediately without any protective gear.',
        'Rely on others to clean up.',
        'Use any available clothing.'
      ])
];

const List<Question> earthquakeQuestionarabic = [
  Question(
      thequestion: 'ماذا يجب أن تفعل إذا كنت في سيارة أثناء الزلزال؟',
      answer: [
        'توقف بجانب الطريق',
        'استمر في القيادة',
        'زد السرعة للابتعاد عن المنطقة',
        'توقف تحت جسر '
      ]),
  Question(
      thequestion:
          'ما هو أفضل إجراء يجب اتخاذه إذا كنت في الخارج أثناء الزلزال؟',
      answer: [
        'ابقَ في الخارج بعيدًا عن المباني',
        ' اجرِ إلى داخل مبنى للبحث عن ملجأ',
        'استلقِ على الأرض',
        'اذهب لأقرب مبنى'
      ]),
  Question(
      thequestion:
          ',عند البحث عن ملجأ أثناء زلزال، ما هو أفضل إجراء يجب اتخاذه إذا لم يكن هناك طاولة متينة أو مكتب قريب؟',
      answer: [
        ' الحبو بجانب جدار داخلي، بعيدًا عن النوافذ.',
        'الوقوف في المدخل',
        'الجري إلى الخارج إلى مساحة مفتوحة',
        ' الاستلقاء على الأرض بشكل مسطح'
      ]),
  Question(
      thequestion: 'ماذا يجب عليك أن تفعل إذا شعرت بهزة ارتدادية؟',
      answer: [
        'كن مستعدًا للانخفاض والتغطية والتشبث.',
        'الجري خارجًا فورًا.',
        'البقاء في السرير وتغطية رأسك.',
        'متابعة أنشطتك العادية.'
      ]),
  Question(
      thequestion: 'ما الإجراء الموصى به إذا كنت في مبنى متضرر بعد الزلزال؟',
      answer: [
        'الخروج بسرعة بعيدًا عن المبنى.',
        'البقاء داخلًا والبحث عن مكان آمن.',
        'فحص سلامة المبنى الهيكلية.',
        'الانتقال إلى السطح.'
      ]),
  Question(
      thequestion:
          'ما هو أفضل إجراء يجب اتخاذه إذا كنت في منطقة قد تتعرض لأمواج تسونامي؟',
      answer: [
        'الانتقال إلى الداخل أو إلى أرض مرتفعة فور توقف الاهتزاز.',
        'البقاء في مكانك.',
        'الانتقال بالقرب من الشاطئ للمراقبة.',
        'الاحتماء داخل مبنى.'
      ]),
  Question(
      thequestion:
          'ماذا يجب عليك استخدامه للبقاء على اطلاع بمعلومات الطوارئ بعد التأكد من سلامتك؟',
      answer: [
        'راديو يعمل بالبطارية، التلفزيون، وسائل التواصل الاجتماعي، أو تنبيهات النصوص على الهاتف المحمول.',
        'التحدث إلى الجيران.',
        'الانتظار حتى وصول المسؤولين الحكوميين.',
        'قراءة الصحيفة.'
      ]),
  Question(
      thequestion:
          'أي وسيلة اتصال يُرجح أن تكون أكثر موثوقية من المكالمات الهاتفية بعد الكارثة؟',
      answer: [
        'الرسائل النصية.',
        'البريد الإلكتروني.',
        'منشورات وسائل التواصل الاجتماعي.',
        'المكالمات الأرضية.'
      ]),
  Question(
      thequestion: 'ما الاحتياطات التي يجب اتخاذها عند التنظيف بعد الكارثة؟',
      answer: [
        'ارتداء ملابس واقية وعدم محاولة إزالة الحطام الثقيل بنفسك.',
        'التنظيف فورًا بدون أي معدات حماية.',
        'الاعتماد على الآخرين للتنظيف.',
        'استخدام أي ملابس متاحة.'
      ]),
];

const List<Question> fireQuestion = [
  Question(
      thequestion:
          'What is the first thing you should do if you smell smoke or see a fire?',
      answer: [
        'Alert everyone.',
        'Collect your belongings.',
        'Look for the source of the fire.',
        'Open all the windows.'
      ]),
  Question(
      thequestion:
          'What should you do immediately after alerting others in case of a fire?',
      answer: [
        'Evacuate immediately using the nearest exit.',
        'Stay inside and wait for help.',
        'Try to extinguish the fire yourself.',
        'Gather all your important documents.'
      ]),
  Question(
      thequestion:
          'What should you do if you encounter smoke while escaping a fire?',
      answer: [
        'Crawl low under the smoke to your exit.',
        'Run through the smoke.',
        'Stand still and wait for help.',
        'Cover your face and walk upright.'
      ]),
  Question(
      thequestion: 'What should you avoid using during a fire?',
      answer: ['Elevator.', 'Stairs.', 'Windows.', 'Doors.']),
  Question(
      thequestion: 'What should you do if your clothes catch fire?',
      answer: [
        'Stop immediately, drop to the ground, and roll to extinguish the flames.',
        'Run and find water.',
        'Stand still and call for help.',
        'Cover yourself with a blanket.'
      ]),
  Question(
      thequestion: 'When should you attempt to use a fire extinguisher?',
      answer: [
        'Only if the fire is small and you are not putting yourself in danger.',
        'Any time you see a fire.',
        'After calling for help.',
        'When the fire department arrives.'
      ]),
  Question(
      thequestion: 'What should you do after ensuring your safety in a fire?',
      answer: [
        'Call emergency services to report the fire.',
        'Go back inside to check the damage.',
        'Look for valuable items.',
        'Wait for someone else to call.'
      ])
];

const List<Question> fireQuestionarabic = [
  Question(
      thequestion:
          'ما هو أول شيء يجب عليك فعله إذا شممت رائحة الدخان أو رأيت حريقًا؟',
      answer: [
        'تنبيه الجميع.',
        'جمع متعلقاتك.',
        'البحث عن مصدر الحريق.',
        'فتح جميع النوافذ.'
      ]),
  Question(
      thequestion: 'ماذا يجب أن تفعل فورًا بعد تنبيه الآخرين في حالة الحريق؟',
      answer: [
        'الإخلاء فورًا باستخدام أقرب مخرج.',
        'البقاء في الداخل وانتظار المساعدة.',
        'محاولة إطفاء الحريق بنفسك.',
        'جمع جميع وثائقك الهامة.'
      ]),
  Question(
      thequestion:
          'ماذا يجب عليك أن تفعل إذا واجهت دخانًا أثناء الهروب من حريق؟',
      answer: [
        'الحبو تحت الدخان للوصول إلى المخرج.',
        'الجري عبر الدخان.',
        'الوقوف في مكانك وانتظار المساعدة.',
        'تغطية وجهك والمشي بشكل مستقيم.'
      ]),
  Question(
      thequestion: 'ما الذي يجب عليك تجنبه أثناء الحريق؟',
      answer: ['المصعد.', 'السلالم.', 'النوافذ.', 'الأبواب.']),
  Question(thequestion: 'ماذا يجب عليك أن تفعل إذا اشتعلت ملابسك؟', answer: [
    'توقف فورًا، انزل إلى الأرض، وتدحرج لإطفاء النيران.',
    'الجري للبحث عن الماء.',
    'الوقوف في مكانك وطلب المساعدة.',
    'تغطية نفسك ببطانية.'
  ]),
  Question(thequestion: 'متى يجب أن تحاول استخدام طفاية الحريق؟', answer: [
    'فقط إذا كان الحريق صغيرًا ولم تكن تعرض نفسك للخطر.',
    'في أي وقت ترى فيه حريق.',
    'بعد الاتصال بالمساعدة.',
    'عند وصول فرقة الإطفاء.'
  ]),
  Question(
      thequestion: 'ماذا يجب أن تفعل بعد التأكد من سلامتك في حالة الحريق؟',
      answer: [
        'الاتصال بخدمات الطوارئ للإبلاغ عن الحريق.',
        'العودة إلى الداخل للتحقق من الأضرار.',
        'البحث عن الأشياء القيمة.',
        'انتظار شخص آخر للاتصال.'
      ])
];

const List<Question> medicalQuestion = [
  Question(
      thequestion:
          'What is the first step to take after an earthquake regarding injuries?',
      answer: [
        'Assess yourself and others for injuries.',
        'Move seriously injured persons immediately.',
        'Wait for professional help to arrive.',
        'Look for your belongings.'
      ]),
  Question(
      thequestion: 'When should you move a seriously injured person?',
      answer: [
        'Only if they are in immediate danger.',
        'As soon as possible.',
        'After providing first aid.',
        'When they ask to be moved.'
      ]),
  Question(
      thequestion:
          'What should you do if someone is seriously injured after an earthquake?',
      answer: [
        'Try to contact emergency services.',
        'Wait for someone else to help.',
        'Move the injured person immediately.',
        'Ignore the injury.'
      ]),
  Question(
      thequestion: 'How should you stop bleeding after an injury?',
      answer: [
        'Apply direct pressure to any wounds using clean cloth or gauze.',
        'Wait for the bleeding to stop on its own.',
        'Cover the wound with any available material.',
        'Pour water on the wound.'
      ]),
  Question(
      thequestion: 'What should you do if someone is not breathing?',
      answer: [
        'Perform CPR.',
        'Shake the person gently.',
        'Cover them with a blanket.',
        'Wait for professional help.'
      ]),
  Question(
      thequestion:
          'How can you protect injuries from further harm after an earthquake?',
      answer: [
        'Use blankets or clothing to cover and protect injuries.',
        'Leave the injuries uncovered.',
        'Expose the injuries to air.',
        'Wash the injuries with water.'
      ]),
  Question(
      thequestion: 'Why is it important to stay calm during an emergency?',
      answer: [
        'Keeping calm helps you think clearly and act effectively.',
        'It makes you look brave.',
        'It prevents others from panicking.',
        'It ensures you stay quiet.'
      ])
];

const List<Question> medicalQuestionarabic = [
  Question(
      thequestion: 'ما هو أول إجراء يجب اتخاذه بعد الزلزال بخصوص الإصابات؟',
      answer: [
        'التحقق من نفسك والآخرين في حال وجود إصابات.',
        'تحريك الأشخاص المصابين بجروح خطيرة فوراً.',
        'انتظار وصول المساعدة المهنية.',
        'البحث عن متعلقاتك.'
      ]),
  Question(thequestion: 'متى يجب تحريك الشخص المصاب بجروح خطيرة؟', answer: [
    'فقط إذا كان في خطر فوري.',
    'في أسرع وقت ممكن.',
    'بعد تقديم الإسعافات الأولية.',
    'عندما يطلب التحرك.'
  ]),
  Question(
      thequestion:
          'ماذا يجب أن تفعل إذا كان شخص ما مصاباً بجروح خطيرة بعد الزلزال؟',
      answer: [
        'حاول الاتصال بخدمات الطوارئ.',
        'انتظار شخص آخر للمساعدة.',
        'تحريك الشخص المصاب فورًا.',
        'تجاهل الإصابة.'
      ]),
  Question(thequestion: 'كيف يمكنك إيقاف النزيف بعد الإصابة؟', answer: [
    'وضع ضغط مباشر على الجروح باستخدام قطعة قماش نظيفة أو شاش.',
    'انتظار توقف النزيف من تلقاء نفسه.',
    'تغطية الجرح بأي مادة متاحة.',
    'صب الماء على الجرح.'
  ]),
  Question(thequestion: 'ماذا يجب أن تفعل إذا كان شخص ما لا يتنفس؟', answer: [
    'إجراء الإنعاش القلبي الرئوي (CPR).',
    'هز الشخص بلطف.',
    'تغطيتهم ببطانية.',
    'انتظار المساعدة المهنية.'
  ]),
  Question(
      thequestion: 'كيف يمكنك حماية الإصابات من المزيد من الضرر بعد الزلزال؟',
      answer: [
        'استخدام البطانيات أو الملابس لتغطية وحماية الإصابات.',
        'ترك الإصابات مكشوفة.',
        'تعريض الإصابات للهواء.',
        'غسل الإصابات بالماء.'
      ]),
  Question(thequestion: 'لماذا من المهم البقاء هادئًا أثناء الطوارئ؟', answer: [
    'الحفاظ على الهدوء يساعدك على التفكير بوضوح والتصرف بفعالية.',
    'يجعلك تبدو شجاعًا.',
    'يمنع الآخرين من الذعر.',
    'يضمن بقاءك هادئًا.'
  ]),Question(
  thequestion: 'لماذا من المهم أن يكون لدى الناس معدات إسعافات أولية في حالة حدوث زلزال؟',
  answer: ['يساعد في تقديم الرعاية الفورية للإصابات ومنع تفاقمها.', 'يمكن استخدامه للإشارة طلباً للمساعدة.', 'يساعد في تنظيف الحطام.', 'إنها متطلب قانوني.']
)
];
