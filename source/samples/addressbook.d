//Generated by Cap'n Proto compiler, DO NOT EDIT.
//source: addressbook.capnp

module addressbook;

import capnproto;

struct Person
{
public:
	static immutable structSize = cast(immutable)StructSize(1, 4);
	
	static struct Builder
	{
	public:
		this(SegmentBuilder* segment, int data, int pointers, int dataSize, short pointerCount)
		{
			b = StructBuilder(segment, data, pointers, dataSize, pointerCount);
		}
		
		
		auto asReader()
		{
			return b.asReader!Reader();
		}
		
		@property uint id()
		{
			return b._getUintField(0);
		}
		alias getId = id;
		
		@property void id(uint value)
		{
			b._setUintField(0, value);
		}
		alias setId = id;
		
		bool hasName()
		{
			return !b._pointerFieldIsNull(0);
		}
		@property Text.Builder name()
		{
			return b._getPointerField!Text(0, null, 0, 0);
		}
		alias getName = name;
		
		@property void name(Text.Reader value)
		{
			b._setPointerField!Text(0, value);
		}
		@property void name(string value)
		{
			b._setPointerField!Text(0, Text.Reader(value));
		}
		alias setName = name;
		
		Text.Builder initName(int size)
		{
			return b._initPointerField!Text(0, size);
		}
		
		bool hasEmail()
		{
			return !b._pointerFieldIsNull(1);
		}
		@property Text.Builder email()
		{
			return b._getPointerField!Text(1, null, 0, 0);
		}
		alias getEmail = email;
		
		@property void email(Text.Reader value)
		{
			b._setPointerField!Text(1, value);
		}
		@property void email(string value)
		{
			b._setPointerField!Text(1, Text.Reader(value));
		}
		alias setEmail = email;
		
		Text.Builder initEmail(int size)
		{
			return b._initPointerField!Text(1, size);
		}
		
		bool hasPhones()
		{
			return !b._pointerFieldIsNull(2);
		}
		@property StructList!(.Person.PhoneNumber).Builder phones()
		{
			return b._getPointerField!(StructList!(.Person.PhoneNumber))(2, null, 0);
		}
		@property void phones(StructList!(.Person.PhoneNumber).Reader value)
		{
			b._setPointerField!(StructList!(.Person.PhoneNumber))(2, value);
		}
		alias setPhones = phones;
		
		StructList!(.Person.PhoneNumber).Builder initPhones(int size)
		{
			return b._initPointerField!(StructList!(.Person.PhoneNumber))(2, size);
		}
		
		@property Employment.Builder employment()
		{
			return Person.Employment.Builder(b.segment, b.data, b.pointers, b.dataSize, b.pointerCount);
		}
		alias setEmployment = employment;
		
		Employment.Builder initEmployment()
		{
			b._setUshortField(2, cast(ushort)0);
			b._clearPointerField(3);
			return Person.Employment.Builder(b.segment, b.data, b.pointers, b.dataSize, b.pointerCount);
		}
		
	public:
		StructBuilder b;
	}
	
	static struct Reader
	{
	public:
		this(SegmentReader* segment, int data, int pointers, int dataSize, short pointerCount, int nestingLimit)
		{
			b = StructReader(segment, data, pointers, dataSize, pointerCount, nestingLimit);
		}
		
		@property uint id()
		{
			return b._getUintField(0);
		}
		alias getId = id;
		
		bool hasName()
		{
			return !b._pointerFieldIsNull(0);
		}
		@property string name()
		{
			return b._getPointerField!Text(0, null, 0, 0).toString();
		}
		alias getName = name;
		
		bool hasEmail()
		{
			return !b._pointerFieldIsNull(1);
		}
		@property string email()
		{
			return b._getPointerField!Text(1, null, 0, 0).toString();
		}
		alias getEmail = email;
		
		bool hasPhones()
		{
			return !b._pointerFieldIsNull(2);
		}
		@property StructList!(.Person.PhoneNumber).Reader phones()
		{
			return b._getPointerField!(StructList!(.Person.PhoneNumber))(2, null, 0);
		}
		alias getPhones = phones;
		
		@property Employment.Reader employment()
		{
			return Person.Employment.Reader(b.segment, b.data, b.pointers, b.dataSize, b.pointerCount, b.nestingLimit);
		}
		alias getEmployment = employment;
		
	public:
		StructReader b;
	}
	
	struct PhoneNumber
	{
	public:
		static immutable structSize = cast(immutable)StructSize(1, 1);
		
		static struct Builder
		{
		public:
			this(SegmentBuilder* segment, int data, int pointers, int dataSize, short pointerCount)
			{
				b = StructBuilder(segment, data, pointers, dataSize, pointerCount);
			}
			
			
			auto asReader()
			{
				return b.asReader!Reader();
			}
			
			bool hasNumber()
			{
				return !b._pointerFieldIsNull(0);
			}
			@property Text.Builder number()
			{
				return b._getPointerField!Text(0, null, 0, 0);
			}
			alias getNumber = number;
			
			@property void number(Text.Reader value)
			{
				b._setPointerField!Text(0, value);
			}
			@property void number(string value)
			{
				b._setPointerField!Text(0, Text.Reader(value));
			}
			alias setNumber = number;
			
			Text.Builder initNumber(int size)
			{
				return b._initPointerField!Text(0, size);
			}
			
			@property .Person.PhoneNumber.Type type()
			{
				switch(b._getUshortField(0))
				{
					case 0: return .Person.PhoneNumber.Type.mobile;
					case 1: return .Person.PhoneNumber.Type.home;
					case 2: return .Person.PhoneNumber.Type.work;
					default: return .Person.PhoneNumber.Type._NOT_IN_SCHEMA;
				}
			}
			alias getType = type;
			
			@property void type(.Person.PhoneNumber.Type value)
			{
				b._setShortField(0, cast(ushort)value);
			}
			alias setType = type;
			
		public:
			StructBuilder b;
		}
		
		static struct Reader
		{
		public:
			this(SegmentReader* segment, int data, int pointers, int dataSize, short pointerCount, int nestingLimit)
			{
				b = StructReader(segment, data, pointers, dataSize, pointerCount, nestingLimit);
			}
			
			bool hasNumber()
			{
				return !b._pointerFieldIsNull(0);
			}
			@property string number()
			{
				return b._getPointerField!Text(0, null, 0, 0).toString();
			}
			alias getNumber = number;
			
			@property .Person.PhoneNumber.Type type()
			{
				switch(b._getUshortField(0))
				{
					case 0: return .Person.PhoneNumber.Type.mobile;
					case 1: return .Person.PhoneNumber.Type.home;
					case 2: return .Person.PhoneNumber.Type.work;
					default: return .Person.PhoneNumber.Type._NOT_IN_SCHEMA;
				}
			}
			alias getType = type;
			
		public:
			StructReader b;
		}
		
		enum Type : ushort
		{
			mobile,
			home,
			work,
			_NOT_IN_SCHEMA,
		}
		
	}
	
	struct Employment
	{
	public:
		static immutable structSize = cast(immutable)StructSize(1, 4);
		
		static struct Builder
		{
		public:
			this(SegmentBuilder* segment, int data, int pointers, int dataSize, short pointerCount)
			{
				b = StructBuilder(segment, data, pointers, dataSize, pointerCount);
			}
			
			Which which()
			{
				switch(b._getUshortField(2))
				{
					case 0: return Which.unemployed;
					case 1: return Which.employer;
					case 2: return Which.school;
					case 3: return Which.selfEmployed;
					default: return Which._NOT_IN_SCHEMA;
				}
			}
			
			
			auto asReader()
			{
				return b.asReader!Reader();
			}
			
			bool isUnemployed()
			{
				return which() == Person.Employment.Which.unemployed;
			}
			@property Void unemployed()
			{
				assert(which() == Person.Employment.Which.unemployed, "Must check which() before get()ing a union member.");
				return Void.VOID;
			}
			alias getUnemployed = unemployed;
			
			void setUnemployed()
			{
				b._setShortField(2, cast(ushort)Person.Employment.Which.unemployed);
			}
			
			bool isEmployer()
			{
				return which() == Person.Employment.Which.employer;
			}
			bool hasEmployer()
			{
				if(which() != Person.Employment.Which.employer) return false;
				return !b._pointerFieldIsNull(3);
			}
			@property Text.Builder employer()
			{
				return b._getPointerField!Text(3, null, 0, 0);
			}
			alias getEmployer = employer;
			
			@property void employer(Text.Reader value)
			{
				b._setShortField(2, cast(ushort)Person.Employment.Which.employer);
				b._setPointerField!Text(3, value);
			}
			@property void employer(string value)
			{
				b._setShortField(2, cast(ushort)Person.Employment.Which.employer);
				b._setPointerField!Text(3, Text.Reader(value));
			}
			alias setEmployer = employer;
			
			Text.Builder initEmployer(int size)
			{
				b._setShortField(2, cast(ushort)Person.Employment.Which.employer);
				return b._initPointerField!Text(3, size);
			}
			
			bool isSchool()
			{
				return which() == Person.Employment.Which.school;
			}
			bool hasSchool()
			{
				if(which() != Person.Employment.Which.school) return false;
				return !b._pointerFieldIsNull(3);
			}
			@property Text.Builder school()
			{
				return b._getPointerField!Text(3, null, 0, 0);
			}
			alias getSchool = school;
			
			@property void school(Text.Reader value)
			{
				b._setShortField(2, cast(ushort)Person.Employment.Which.school);
				b._setPointerField!Text(3, value);
			}
			@property void school(string value)
			{
				b._setShortField(2, cast(ushort)Person.Employment.Which.school);
				b._setPointerField!Text(3, Text.Reader(value));
			}
			alias setSchool = school;
			
			Text.Builder initSchool(int size)
			{
				b._setShortField(2, cast(ushort)Person.Employment.Which.school);
				return b._initPointerField!Text(3, size);
			}
			
			bool isSelfEmployed()
			{
				return which() == Person.Employment.Which.selfEmployed;
			}
			@property Void selfEmployed()
			{
				assert(which() == Person.Employment.Which.selfEmployed, "Must check which() before get()ing a union member.");
				return Void.VOID;
			}
			alias getSelfEmployed = selfEmployed;
			
			void setSelfEmployed()
			{
				b._setShortField(2, cast(ushort)Person.Employment.Which.selfEmployed);
			}
			
		public:
			StructBuilder b;
		}
		
		static struct Reader
		{
		public:
			this(SegmentReader* segment, int data, int pointers, int dataSize, short pointerCount, int nestingLimit)
			{
				b = StructReader(segment, data, pointers, dataSize, pointerCount, nestingLimit);
			}
			
			Which which()
			{
				switch(b._getUshortField(2))
				{
					case 0: return Which.unemployed;
					case 1: return Which.employer;
					case 2: return Which.school;
					case 3: return Which.selfEmployed;
					default: return Which._NOT_IN_SCHEMA;
				}
			}
			
			bool isUnemployed()
			{
				return which() == Person.Employment.Which.unemployed;
			}
			@property Void unemployed()
			{
				assert(which() == Person.Employment.Which.unemployed, "Must check which() before get()ing a union member.");
				return Void.VOID;
			}
			alias getUnemployed = unemployed;
			
			bool isEmployer()
			{
				return which() == Person.Employment.Which.employer;
			}
			bool hasEmployer()
			{
				if(which() != Person.Employment.Which.employer) return false;
				return !b._pointerFieldIsNull(3);
			}
			@property string employer()
			{
				return b._getPointerField!Text(3, null, 0, 0).toString();
			}
			alias getEmployer = employer;
			
			bool isSchool()
			{
				return which() == Person.Employment.Which.school;
			}
			bool hasSchool()
			{
				if(which() != Person.Employment.Which.school) return false;
				return !b._pointerFieldIsNull(3);
			}
			@property string school()
			{
				return b._getPointerField!Text(3, null, 0, 0).toString();
			}
			alias getSchool = school;
			
			bool isSelfEmployed()
			{
				return which() == Person.Employment.Which.selfEmployed;
			}
			@property Void selfEmployed()
			{
				assert(which() == Person.Employment.Which.selfEmployed, "Must check which() before get()ing a union member.");
				return Void.VOID;
			}
			alias getSelfEmployed = selfEmployed;
			
		public:
			StructReader b;
		}
		
		enum Which : ushort
		{
			unemployed,
			employer,
			school,
			selfEmployed,
			_NOT_IN_SCHEMA,
		}
	}
	
}

struct AddressBook
{
public:
	static immutable structSize = cast(immutable)StructSize(0, 1);
	
	static struct Builder
	{
	public:
		this(SegmentBuilder* segment, int data, int pointers, int dataSize, short pointerCount)
		{
			b = StructBuilder(segment, data, pointers, dataSize, pointerCount);
		}
		
		
		auto asReader()
		{
			return b.asReader!Reader();
		}
		
		bool hasPeople()
		{
			return !b._pointerFieldIsNull(0);
		}
		@property StructList!(.Person).Builder people()
		{
			return b._getPointerField!(StructList!(.Person))(0, null, 0);
		}
		@property void people(StructList!(.Person).Reader value)
		{
			b._setPointerField!(StructList!(.Person))(0, value);
		}
		alias setPeople = people;
		
		StructList!(.Person).Builder initPeople(int size)
		{
			return b._initPointerField!(StructList!(.Person))(0, size);
		}
		
	public:
		StructBuilder b;
	}
	
	static struct Reader
	{
	public:
		this(SegmentReader* segment, int data, int pointers, int dataSize, short pointerCount, int nestingLimit)
		{
			b = StructReader(segment, data, pointers, dataSize, pointerCount, nestingLimit);
		}
		
		bool hasPeople()
		{
			return !b._pointerFieldIsNull(0);
		}
		@property StructList!(.Person).Reader people()
		{
			return b._getPointerField!(StructList!(.Person))(0, null, 0);
		}
		alias getPeople = people;
		
	public:
		StructReader b;
	}
	
}

struct Schemas
{
public:
	__gshared static SegmentReader b_98808e9832e8bc18 = GeneratedClassSupport.decodeRawBytes([
	  0x0,0x0,0x0,0x0,0x5,0x0,0x6,0x0,
	  0x18,0xbc,0xe8,0x32,0x98,0x8e,0x80,0x98,
	  0x21,0x0,0x0,0x0,0x1,0x0,0x1,0x0,
	  0x74,0xe1,0x6e,0xf8,0x19,0x2e,0xb3,0x9e,
	  0x4,0x0,0x7,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x15,0x0,0x0,0x0,0x42,0x1,0x0,0x0,
	  0x25,0x0,0x0,0x0,0x17,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x31,0x0,0x0,0x0,0x1f,0x1,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x73,0x6f,0x75,0x72,0x63,0x65,0x2f,0x73,
	  0x61,0x6d,0x70,0x6c,0x65,0x73,0x2f,0x61,
	  0x64,0x64,0x72,0x65,0x73,0x73,0x62,0x6f,
	  0x6f,0x6b,0x2e,0x63,0x61,0x70,0x6e,0x70,
	  0x3a,0x50,0x65,0x72,0x73,0x6f,0x6e,0x0,
	  0x4,0x0,0x0,0x0,0x1,0x0,0x1,0x0,
	  0xd0,0x8a,0x9e,0x9c,0xb2,0x90,0x4e,0x81,
	  0x1,0x0,0x0,0x0,0x62,0x0,0x0,0x0,
	  0x50,0x68,0x6f,0x6e,0x65,0x4e,0x75,0x6d,
	  0x62,0x65,0x72,0x0,0x0,0x0,0x0,0x0,
	  0x14,0x0,0x0,0x0,0x3,0x0,0x4,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x1,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x7d,0x0,0x0,0x0,0x1a,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x78,0x0,0x0,0x0,0x3,0x0,0x1,0x0,
	  0x84,0x0,0x0,0x0,0x2,0x0,0x1,0x0,
	  0x1,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x1,0x0,0x1,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x81,0x0,0x0,0x0,0x2a,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x7c,0x0,0x0,0x0,0x3,0x0,0x1,0x0,
	  0x88,0x0,0x0,0x0,0x2,0x0,0x1,0x0,
	  0x2,0x0,0x0,0x0,0x1,0x0,0x0,0x0,
	  0x0,0x0,0x1,0x0,0x2,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x85,0x0,0x0,0x0,0x32,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x80,0x0,0x0,0x0,0x3,0x0,0x1,0x0,
	  0x8c,0x0,0x0,0x0,0x2,0x0,0x1,0x0,
	  0x3,0x0,0x0,0x0,0x2,0x0,0x0,0x0,
	  0x0,0x0,0x1,0x0,0x3,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x89,0x0,0x0,0x0,0x3a,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x84,0x0,0x0,0x0,0x3,0x0,0x1,0x0,
	  0xa0,0x0,0x0,0x0,0x2,0x0,0x1,0x0,
	  0x4,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x1,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x3d,0x69,0xc3,0xbd,0xd4,0x2b,0xb,0xbb,
	  0x9d,0x0,0x0,0x0,0x5a,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x69,0x64,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x8,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x8,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x6e,0x61,0x6d,0x65,0x0,0x0,0x0,0x0,
	  0xc,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0xc,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x65,0x6d,0x61,0x69,0x6c,0x0,0x0,0x0,
	  0xc,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0xc,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x70,0x68,0x6f,0x6e,0x65,0x73,0x0,0x0,
	  0xe,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x3,0x0,0x1,0x0,
	  0x10,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0xd0,0x8a,0x9e,0x9c,0xb2,0x90,0x4e,0x81,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0xe,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x65,0x6d,0x70,0x6c,0x6f,0x79,0x6d,0x65,
	  0x6e,0x74,0x0,0x0,0x0,0x0,0x0,0x0,
	]);
	__gshared static SegmentReader b_814e90b29c9e8ad0 = GeneratedClassSupport.decodeRawBytes([
	  0x0,0x0,0x0,0x0,0x5,0x0,0x6,0x0,
	  0xd0,0x8a,0x9e,0x9c,0xb2,0x90,0x4e,0x81,
	  0x28,0x0,0x0,0x0,0x1,0x0,0x1,0x0,
	  0x18,0xbc,0xe8,0x32,0x98,0x8e,0x80,0x98,
	  0x1,0x0,0x7,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x15,0x0,0x0,0x0,0xa2,0x1,0x0,0x0,
	  0x2d,0x0,0x0,0x0,0x17,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x35,0x0,0x0,0x0,0x77,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x73,0x6f,0x75,0x72,0x63,0x65,0x2f,0x73,
	  0x61,0x6d,0x70,0x6c,0x65,0x73,0x2f,0x61,
	  0x64,0x64,0x72,0x65,0x73,0x73,0x62,0x6f,
	  0x6f,0x6b,0x2e,0x63,0x61,0x70,0x6e,0x70,
	  0x3a,0x50,0x65,0x72,0x73,0x6f,0x6e,0x2e,
	  0x50,0x68,0x6f,0x6e,0x65,0x4e,0x75,0x6d,
	  0x62,0x65,0x72,0x0,0x0,0x0,0x0,0x0,
	  0x4,0x0,0x0,0x0,0x1,0x0,0x1,0x0,
	  0x2f,0x6,0x85,0xd5,0x4,0xbd,0xe0,0x91,
	  0x1,0x0,0x0,0x0,0x2a,0x0,0x0,0x0,
	  0x54,0x79,0x70,0x65,0x0,0x0,0x0,0x0,
	  0x8,0x0,0x0,0x0,0x3,0x0,0x4,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x1,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x29,0x0,0x0,0x0,0x3a,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x24,0x0,0x0,0x0,0x3,0x0,0x1,0x0,
	  0x30,0x0,0x0,0x0,0x2,0x0,0x1,0x0,
	  0x1,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x1,0x0,0x1,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x2d,0x0,0x0,0x0,0x2a,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x28,0x0,0x0,0x0,0x3,0x0,0x1,0x0,
	  0x34,0x0,0x0,0x0,0x2,0x0,0x1,0x0,
	  0x6e,0x75,0x6d,0x62,0x65,0x72,0x0,0x0,
	  0xc,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0xc,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x74,0x79,0x70,0x65,0x0,0x0,0x0,0x0,
	  0xf,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x2f,0x6,0x85,0xd5,0x4,0xbd,0xe0,0x91,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0xf,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	]);
	__gshared static SegmentReader b_91e0bd04d585062f = GeneratedClassSupport.decodeRawBytes([
	  0x0,0x0,0x0,0x0,0x5,0x0,0x6,0x0,
	  0x2f,0x6,0x85,0xd5,0x4,0xbd,0xe0,0x91,
	  0x34,0x0,0x0,0x0,0x2,0x0,0x0,0x0,
	  0xd0,0x8a,0x9e,0x9c,0xb2,0x90,0x4e,0x81,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x15,0x0,0x0,0x0,0xca,0x1,0x0,0x0,
	  0x31,0x0,0x0,0x0,0x7,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x2d,0x0,0x0,0x0,0x4f,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x73,0x6f,0x75,0x72,0x63,0x65,0x2f,0x73,
	  0x61,0x6d,0x70,0x6c,0x65,0x73,0x2f,0x61,
	  0x64,0x64,0x72,0x65,0x73,0x73,0x62,0x6f,
	  0x6f,0x6b,0x2e,0x63,0x61,0x70,0x6e,0x70,
	  0x3a,0x50,0x65,0x72,0x73,0x6f,0x6e,0x2e,
	  0x50,0x68,0x6f,0x6e,0x65,0x4e,0x75,0x6d,
	  0x62,0x65,0x72,0x2e,0x54,0x79,0x70,0x65,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x1,0x0,0x1,0x0,
	  0xc,0x0,0x0,0x0,0x1,0x0,0x2,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x1d,0x0,0x0,0x0,0x3a,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x1,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x15,0x0,0x0,0x0,0x2a,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x2,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0xd,0x0,0x0,0x0,0x2a,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x6d,0x6f,0x62,0x69,0x6c,0x65,0x0,0x0,
	  0x68,0x6f,0x6d,0x65,0x0,0x0,0x0,0x0,
	  0x77,0x6f,0x72,0x6b,0x0,0x0,0x0,0x0,
	]);
	__gshared static SegmentReader b_bb0b2bd4bdc3693d = GeneratedClassSupport.decodeRawBytes([
	  0x0,0x0,0x0,0x0,0x5,0x0,0x6,0x0,
	  0x3d,0x69,0xc3,0xbd,0xd4,0x2b,0xb,0xbb,
	  0x28,0x0,0x0,0x0,0x1,0x0,0x1,0x0,
	  0x18,0xbc,0xe8,0x32,0x98,0x8e,0x80,0x98,
	  0x4,0x0,0x7,0x0,0x1,0x0,0x4,0x0,
	  0x2,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x15,0x0,0x0,0x0,0x9a,0x1,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x25,0x0,0x0,0x0,0xe7,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x73,0x6f,0x75,0x72,0x63,0x65,0x2f,0x73,
	  0x61,0x6d,0x70,0x6c,0x65,0x73,0x2f,0x61,
	  0x64,0x64,0x72,0x65,0x73,0x73,0x62,0x6f,
	  0x6f,0x6b,0x2e,0x63,0x61,0x70,0x6e,0x70,
	  0x3a,0x50,0x65,0x72,0x73,0x6f,0x6e,0x2e,
	  0x65,0x6d,0x70,0x6c,0x6f,0x79,0x6d,0x65,
	  0x6e,0x74,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x10,0x0,0x0,0x0,0x3,0x0,0x4,0x0,
	  0x0,0x0,0xff,0xff,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x1,0x0,0x4,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x61,0x0,0x0,0x0,0x5a,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x60,0x0,0x0,0x0,0x3,0x0,0x1,0x0,
	  0x6c,0x0,0x0,0x0,0x2,0x0,0x1,0x0,
	  0x1,0x0,0xfe,0xff,0x3,0x0,0x0,0x0,
	  0x0,0x0,0x1,0x0,0x5,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x69,0x0,0x0,0x0,0x4a,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x68,0x0,0x0,0x0,0x3,0x0,0x1,0x0,
	  0x74,0x0,0x0,0x0,0x2,0x0,0x1,0x0,
	  0x2,0x0,0xfd,0xff,0x3,0x0,0x0,0x0,
	  0x0,0x0,0x1,0x0,0x6,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x71,0x0,0x0,0x0,0x3a,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x6c,0x0,0x0,0x0,0x3,0x0,0x1,0x0,
	  0x78,0x0,0x0,0x0,0x2,0x0,0x1,0x0,
	  0x3,0x0,0xfc,0xff,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x1,0x0,0x7,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x75,0x0,0x0,0x0,0x6a,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x74,0x0,0x0,0x0,0x3,0x0,0x1,0x0,
	  0x80,0x0,0x0,0x0,0x2,0x0,0x1,0x0,
	  0x75,0x6e,0x65,0x6d,0x70,0x6c,0x6f,0x79,
	  0x65,0x64,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x65,0x6d,0x70,0x6c,0x6f,0x79,0x65,0x72,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0xc,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0xc,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x73,0x63,0x68,0x6f,0x6f,0x6c,0x0,0x0,
	  0xc,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0xc,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x73,0x65,0x6c,0x66,0x45,0x6d,0x70,0x6c,
	  0x6f,0x79,0x65,0x64,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	]);
	__gshared static SegmentReader b_f934d9b354a8a134 = GeneratedClassSupport.decodeRawBytes([
	  0x0,0x0,0x0,0x0,0x5,0x0,0x6,0x0,
	  0x34,0xa1,0xa8,0x54,0xb3,0xd9,0x34,0xf9,
	  0x21,0x0,0x0,0x0,0x1,0x0,0x0,0x0,
	  0x74,0xe1,0x6e,0xf8,0x19,0x2e,0xb3,0x9e,
	  0x1,0x0,0x7,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x15,0x0,0x0,0x0,0x6a,0x1,0x0,0x0,
	  0x29,0x0,0x0,0x0,0x7,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x25,0x0,0x0,0x0,0x3f,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x73,0x6f,0x75,0x72,0x63,0x65,0x2f,0x73,
	  0x61,0x6d,0x70,0x6c,0x65,0x73,0x2f,0x61,
	  0x64,0x64,0x72,0x65,0x73,0x73,0x62,0x6f,
	  0x6f,0x6b,0x2e,0x63,0x61,0x70,0x6e,0x70,
	  0x3a,0x41,0x64,0x64,0x72,0x65,0x73,0x73,
	  0x42,0x6f,0x6f,0x6b,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x1,0x0,0x1,0x0,
	  0x4,0x0,0x0,0x0,0x3,0x0,0x4,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x1,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0xd,0x0,0x0,0x0,0x3a,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x8,0x0,0x0,0x0,0x3,0x0,0x1,0x0,
	  0x24,0x0,0x0,0x0,0x2,0x0,0x1,0x0,
	  0x70,0x65,0x6f,0x70,0x6c,0x65,0x0,0x0,
	  0xe,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x3,0x0,0x1,0x0,
	  0x10,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x18,0xbc,0xe8,0x32,0x98,0x8e,0x80,0x98,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0xe,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	]);
}

