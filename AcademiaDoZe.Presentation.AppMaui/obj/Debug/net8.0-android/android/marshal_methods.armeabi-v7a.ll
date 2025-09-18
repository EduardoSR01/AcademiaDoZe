; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [363 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [720 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 266
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 300
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39485524, ; 6: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 7: System.Threading.Thread => 0x28aa24d => 145
	i32 57725457, ; 8: it\Microsoft.Data.SqlClient.resources => 0x370d211 => 313
	i32 57727992, ; 9: ja\Microsoft.Data.SqlClient.resources => 0x370dbf8 => 314
	i32 66541672, ; 10: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 11: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 355
	i32 68219467, ; 12: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 13: Microsoft.Maui.Graphics.dll => 0x44bb714 => 211
	i32 82292897, ; 14: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 101534019, ; 15: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 284
	i32 117431740, ; 16: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 17: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 284
	i32 122350210, ; 18: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 19: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 304
	i32 139659294, ; 20: ja/Microsoft.Data.SqlClient.resources.dll => 0x853081e => 314
	i32 142721839, ; 21: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 22: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 23: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 24: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 240
	i32 166535111, ; 25: ru/Microsoft.Data.SqlClient.resources.dll => 0x9ed1fc7 => 318
	i32 176265551, ; 26: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 27: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 286
	i32 184328833, ; 28: System.ValueTuple.dll => 0xafca281 => 151
	i32 195452805, ; 29: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 352
	i32 199333315, ; 30: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 353
	i32 205061960, ; 31: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 32: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 238
	i32 220171995, ; 33: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 34: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 260
	i32 230752869, ; 35: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 36: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 37: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 38: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 261689757, ; 39: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 243
	i32 264223668, ; 40: zh-Hans\Microsoft.Data.SqlClient.resources => 0xfbfbbb4 => 320
	i32 276479776, ; 41: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 42: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 262
	i32 280482487, ; 43: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 259
	i32 280992041, ; 44: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 324
	i32 291076382, ; 45: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 46: System.Net.Ping.dll => 0x11d123fd => 69
	i32 317674968, ; 47: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 352
	i32 318968648, ; 48: Xamarin.AndroidX.Activity.dll => 0x13031348 => 229
	i32 321597661, ; 49: System.Numerics => 0x132b30dd => 83
	i32 330147069, ; 50: Microsoft.SqlServer.Server => 0x13ada4fd => 212
	i32 336156722, ; 51: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 337
	i32 342366114, ; 52: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 261
	i32 356389973, ; 53: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 336
	i32 360082299, ; 54: System.ServiceModel.Web => 0x15766b7b => 131
	i32 360671332, ; 55: pl\Microsoft.Data.SqlClient.resources => 0x157f6864 => 316
	i32 367780167, ; 56: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 57: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 58: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 59: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 60: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 61: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 62: _Microsoft.Android.Resource.Designer => 0x17969339 => 359
	i32 403441872, ; 63: WindowsBase => 0x180c08d0 => 165
	i32 407321033, ; 64: tr/Microsoft.Data.SqlClient.resources.dll => 0x184739c9 => 319
	i32 435591531, ; 65: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 348
	i32 441335492, ; 66: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 244
	i32 442565967, ; 67: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 68: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 257
	i32 451504562, ; 69: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 70: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 71: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 72: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 73: System.dll => 0x1bff388e => 164
	i32 476646585, ; 74: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 259
	i32 485463106, ; 75: Microsoft.IdentityModel.Abstractions => 0x1cef9442 => 200
	i32 486930444, ; 76: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 272
	i32 498788369, ; 77: System.ObjectModel => 0x1dbae811 => 84
	i32 500358224, ; 78: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 335
	i32 503918385, ; 79: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 329
	i32 513247710, ; 80: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 197
	i32 526420162, ; 81: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 82: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 304
	i32 530272170, ; 83: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 539058512, ; 84: Microsoft.Extensions.Logging => 0x20216150 => 193
	i32 540030774, ; 85: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 86: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 87: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 548916678, ; 88: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 184
	i32 549171840, ; 89: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 90: Jsr305Binding => 0x213954e7 => 297
	i32 569601784, ; 91: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 295
	i32 577335427, ; 92: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 592146354, ; 93: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 343
	i32 601371474, ; 94: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 95: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 96: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 618636221, ; 97: K4os.Compression.LZ4.Streams => 0x24dfa3bd => 180
	i32 627609679, ; 98: Xamarin.AndroidX.CustomView => 0x2568904f => 249
	i32 627931235, ; 99: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 341
	i32 639843206, ; 100: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 255
	i32 643868501, ; 101: System.Net => 0x2660a755 => 81
	i32 662205335, ; 102: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 103: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 291
	i32 666292255, ; 104: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 236
	i32 672442732, ; 105: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 106: System.Net.Security => 0x28bdabca => 73
	i32 688181140, ; 107: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 323
	i32 690569205, ; 108: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 109: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 306
	i32 693804605, ; 110: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 111: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 112: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 301
	i32 700358131, ; 113: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 706645707, ; 114: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 338
	i32 709152836, ; 115: System.Security.Cryptography.Pkcs.dll => 0x2a44d044 => 221
	i32 709557578, ; 116: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 326
	i32 720511267, ; 117: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 305
	i32 722857257, ; 118: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 723796036, ; 119: System.ClientModel.dll => 0x2b244044 => 214
	i32 735137430, ; 120: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 121: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 122: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 226
	i32 759454413, ; 123: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 124: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 125: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 126: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 347
	i32 789151979, ; 127: Microsoft.Extensions.Options => 0x2f0980eb => 196
	i32 790371945, ; 128: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 250
	i32 804715423, ; 129: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 130: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 264
	i32 809851609, ; 131: System.Drawing.Common.dll => 0x30455ad9 => 217
	i32 823281589, ; 132: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 133: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 134: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 135: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 136: Xamarin.AndroidX.Print => 0x3246f6cd => 277
	i32 873119928, ; 137: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 138: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 139: System.Net.Http.Json => 0x3463c971 => 63
	i32 904024072, ; 140: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 141: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 926902833, ; 142: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 350
	i32 928116545, ; 143: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 300
	i32 952186615, ; 144: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 956575887, ; 145: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 305
	i32 957360897, ; 146: AcademiaDoZe.Presentation.AppMaui => 0x39102b01 => 0
	i32 966729478, ; 147: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 298
	i32 967690846, ; 148: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 261
	i32 975236339, ; 149: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 150: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 983077409, ; 151: MySql.Data.dll => 0x3a989221 => 213
	i32 986514023, ; 152: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 153: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 154: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 155: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 1001831731, ; 156: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 157: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 281
	i32 1019214401, ; 158: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 159: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 192
	i32 1029334545, ; 160: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 325
	i32 1031528504, ; 161: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 299
	i32 1035644815, ; 162: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 234
	i32 1036536393, ; 163: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 164: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1048439329, ; 165: de/Microsoft.Data.SqlClient.resources.dll => 0x3e7dea21 => 310
	i32 1052210849, ; 166: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 268
	i32 1062017875, ; 167: Microsoft.Identity.Client.Extensions.Msal => 0x3f4d1b53 => 199
	i32 1067306892, ; 168: GoogleGson => 0x3f9dcf8c => 178
	i32 1082857460, ; 169: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 170: Xamarin.Kotlin.StdLib => 0x409e66d8 => 302
	i32 1089913930, ; 171: System.Diagnostics.EventLog.dll => 0x40f6c44a => 216
	i32 1098259244, ; 172: System => 0x41761b2c => 164
	i32 1118262833, ; 173: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 338
	i32 1121599056, ; 174: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 267
	i32 1127624469, ; 175: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 195
	i32 1138436374, ; 176: Microsoft.Data.SqlClient.dll => 0x43db2916 => 186
	i32 1145483052, ; 177: System.Windows.Extensions.dll => 0x4446af2c => 224
	i32 1149092582, ; 178: Xamarin.AndroidX.Window => 0x447dc2e6 => 294
	i32 1168523401, ; 179: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 344
	i32 1170634674, ; 180: System.Web.dll => 0x45c677b2 => 153
	i32 1175144683, ; 181: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 290
	i32 1178241025, ; 182: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 275
	i32 1181870847, ; 183: Microsoft.Bcl.Cryptography => 0x4671eaff => 185
	i32 1203215381, ; 184: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 342
	i32 1204270330, ; 185: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 236
	i32 1204575371, ; 186: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 188
	i32 1208641965, ; 187: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1214827643, ; 188: CommunityToolkit.Mvvm => 0x4868cc7b => 176
	i32 1219128291, ; 189: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1234928153, ; 190: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 340
	i32 1243150071, ; 191: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 295
	i32 1253011324, ; 192: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 193: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 324
	i32 1264511973, ; 194: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 285
	i32 1267360935, ; 195: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 289
	i32 1273260888, ; 196: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 241
	i32 1275534314, ; 197: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 306
	i32 1278448581, ; 198: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 233
	i32 1293217323, ; 199: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 252
	i32 1309188875, ; 200: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1315359775, ; 201: cs/Microsoft.Data.SqlClient.resources.dll => 0x4e66cc1f => 309
	i32 1322716291, ; 202: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 294
	i32 1324164729, ; 203: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 204: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1364015309, ; 205: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 206: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 354
	i32 1376866003, ; 207: Xamarin.AndroidX.SavedState => 0x52114ed3 => 281
	i32 1379779777, ; 208: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 209: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 210: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 245
	i32 1408764838, ; 211: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 212: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 213: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 214: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 322
	i32 1434145427, ; 215: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 216: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 298
	i32 1439761251, ; 217: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 218: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 219: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 220: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 221: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1460893475, ; 222: System.IdentityModel.Tokens.Jwt => 0x57137723 => 218
	i32 1461004990, ; 223: es\Microsoft.Maui.Controls.resources => 0x57152abe => 328
	i32 1461234159, ; 224: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 225: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 226: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 227: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 235
	i32 1470490898, ; 228: Microsoft.Extensions.Primitives => 0x57a5e912 => 197
	i32 1473729500, ; 229: AcademiaDoZe.Application.dll => 0x57d753dc => 356
	i32 1479771757, ; 230: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 231: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 232: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1487250139, ; 233: K4os.Hash.xxHash => 0x58a5a2db => 181
	i32 1490025113, ; 234: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 282
	i32 1493001747, ; 235: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 332
	i32 1498168481, ; 236: Microsoft.IdentityModel.JsonWebTokens.dll => 0x594c3ca1 => 201
	i32 1514721132, ; 237: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 327
	i32 1536373174, ; 238: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 239: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 240: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 241: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1551623176, ; 242: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 347
	i32 1565862583, ; 243: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 244: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 245: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 246: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582305585, ; 247: Azure.Identity => 0x5e501131 => 174
	i32 1582372066, ; 248: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 251
	i32 1592978981, ; 249: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1596263029, ; 250: zh-Hant\Microsoft.Data.SqlClient.resources => 0x5f250a75 => 321
	i32 1597949149, ; 251: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 299
	i32 1601112923, ; 252: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 253: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 254: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 255: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 271
	i32 1622358360, ; 256: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 257: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 293
	i32 1628113371, ; 258: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x610b09db => 204
	i32 1635184631, ; 259: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 255
	i32 1636350590, ; 260: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 248
	i32 1639515021, ; 261: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 262: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 263: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 264: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 265: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 287
	i32 1658251792, ; 266: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 296
	i32 1670060433, ; 267: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 243
	i32 1675553242, ; 268: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 269: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 270: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 271: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1691477237, ; 272: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 273: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 274: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 303
	i32 1701541528, ; 275: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720013373, ; 276: Konscious.Security.Cryptography.Blake2 => 0x6685523d => 183
	i32 1720223769, ; 277: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 264
	i32 1726116996, ; 278: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 279: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 280: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 239
	i32 1736233607, ; 281: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 345
	i32 1743415430, ; 282: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 323
	i32 1744735666, ; 283: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746115085, ; 284: System.IO.Pipelines.dll => 0x68139a0d => 219
	i32 1746316138, ; 285: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 286: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 287: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1763938596, ; 288: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 289: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 290: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 286
	i32 1770582343, ; 291: Microsoft.Extensions.Logging.dll => 0x6988f147 => 193
	i32 1776026572, ; 292: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 293: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 294: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 295: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 339
	i32 1788241197, ; 296: Xamarin.AndroidX.Fragment => 0x6a96652d => 257
	i32 1793755602, ; 297: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 331
	i32 1794500907, ; 298: Microsoft.Identity.Client.dll => 0x6af5e92b => 198
	i32 1796167890, ; 299: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 184
	i32 1808609942, ; 300: Xamarin.AndroidX.Loader => 0x6bcd3296 => 271
	i32 1813058853, ; 301: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 302
	i32 1813201214, ; 302: Xamarin.Google.Android.Material => 0x6c13413e => 296
	i32 1818569960, ; 303: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 276
	i32 1818787751, ; 304: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 305: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 306: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 307: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 194
	i32 1829150748, ; 308: System.Windows.Extensions => 0x6d06a01c => 224
	i32 1842015223, ; 309: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 351
	i32 1847515442, ; 310: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 226
	i32 1853025655, ; 311: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 348
	i32 1858542181, ; 312: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 313: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1871986876, ; 314: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0x6f9440bc => 204
	i32 1875935024, ; 315: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 330
	i32 1879696579, ; 316: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1883390060, ; 317: AcademiaDoZe.Infrastructure => 0x7042406c => 358
	i32 1885316902, ; 318: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 237
	i32 1888955245, ; 319: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 320: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1898237753, ; 321: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 322: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 323: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1925302748, ; 324: K4os.Compression.LZ4.dll => 0x72c1c9dc => 179
	i32 1939592360, ; 325: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1956758971, ; 326: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 327: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 283
	i32 1968388702, ; 328: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 189
	i32 1983156543, ; 329: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 303
	i32 1985761444, ; 330: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 228
	i32 1986222447, ; 331: Microsoft.IdentityModel.Tokens.dll => 0x7663596f => 205
	i32 2003115576, ; 332: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 327
	i32 2011961780, ; 333: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 334: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 268
	i32 2025202353, ; 335: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 322
	i32 2031763787, ; 336: Xamarin.Android.Glide => 0x791a414b => 225
	i32 2040764568, ; 337: Microsoft.Identity.Client.Extensions.Msal.dll => 0x79a39898 => 199
	i32 2045470958, ; 338: System.Private.Xml => 0x79eb68ee => 88
	i32 2055257422, ; 339: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 263
	i32 2060060697, ; 340: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 341: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 326
	i32 2070888862, ; 342: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2079903147, ; 343: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 344: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2127167465, ; 345: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 346: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 347: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 348: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 349: Microsoft.Maui => 0x80bd55ad => 209
	i32 2168799254, ; 350: AcademiaDoZe.Domain => 0x81454016 => 357
	i32 2169148018, ; 351: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 334
	i32 2181898931, ; 352: Microsoft.Extensions.Options.dll => 0x820d22b3 => 196
	i32 2192057212, ; 353: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 194
	i32 2193016926, ; 354: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 355: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 307
	i32 2201231467, ; 356: System.Net.Http => 0x8334206b => 64
	i32 2207618523, ; 357: it\Microsoft.Maui.Controls.resources => 0x839595db => 336
	i32 2217644978, ; 358: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 290
	i32 2222056684, ; 359: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2228745826, ; 360: pt-BR\Microsoft.Data.SqlClient.resources => 0x84d7f662 => 317
	i32 2244775296, ; 361: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 272
	i32 2252106437, ; 362: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2253551641, ; 363: Microsoft.IdentityModel.Protocols => 0x86527819 => 203
	i32 2256313426, ; 364: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 365: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 366: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 190
	i32 2267999099, ; 367: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 227
	i32 2270573516, ; 368: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 330
	i32 2279755925, ; 369: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 279
	i32 2293034957, ; 370: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 371: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 372: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 373: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 340
	i32 2305521784, ; 374: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2309278602, ; 375: ko\Microsoft.Data.SqlClient.resources => 0x89a4cb8a => 315
	i32 2315684594, ; 376: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 231
	i32 2320631194, ; 377: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 378: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 379: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 380: System.Net.Primitives => 0x8c40e0db => 70
	i32 2368005991, ; 381: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2369706906, ; 382: Microsoft.IdentityModel.Logging => 0x8d3edb9a => 202
	i32 2371007202, ; 383: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 189
	i32 2378619854, ; 384: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 385: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 386: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 335
	i32 2401565422, ; 387: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 388: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 254
	i32 2421380589, ; 389: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 390: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 241
	i32 2427813419, ; 391: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 332
	i32 2435356389, ; 392: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 393: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 394: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 395: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 396: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465532216, ; 397: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 244
	i32 2471841756, ; 398: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 399: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 400: Microsoft.Maui.Controls => 0x93dba8a1 => 207
	i32 2483903535, ; 401: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 402: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2486824558, ; 403: K4os.Hash.xxHash.dll => 0x9439ee6e => 181
	i32 2490993605, ; 404: System.AppContext.dll => 0x94798bc5 => 6
	i32 2498657740, ; 405: BouncyCastle.Cryptography.dll => 0x94ee7dcc => 175
	i32 2501346920, ; 406: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 407: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 266
	i32 2509217888, ; 408: System.Diagnostics.EventLog => 0x958fa060 => 216
	i32 2522472828, ; 409: Xamarin.Android.Glide.dll => 0x9659e17c => 225
	i32 2538310050, ; 410: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 411: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 333
	i32 2562349572, ; 412: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 413: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2581783588, ; 414: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 267
	i32 2581819634, ; 415: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 289
	i32 2585220780, ; 416: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 417: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 418: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2593496499, ; 419: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 342
	i32 2605712449, ; 420: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 307
	i32 2611359322, ; 421: ZstdSharp.dll => 0x9ba62e5a => 308
	i32 2615233544, ; 422: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 258
	i32 2616218305, ; 423: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 195
	i32 2617129537, ; 424: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 425: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 426: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 248
	i32 2624644809, ; 427: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 253
	i32 2626831493, ; 428: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 337
	i32 2627185994, ; 429: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2628210652, ; 430: System.Memory.Data => 0x9ca74fdc => 220
	i32 2629843544, ; 431: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 432: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 262
	i32 2640290731, ; 433: Microsoft.IdentityModel.Logging.dll => 0x9d5fa3ab => 202
	i32 2640706905, ; 434: Azure.Core => 0x9d65fd59 => 173
	i32 2660759594, ; 435: System.Security.Cryptography.ProtectedData.dll => 0x9e97f82a => 222
	i32 2663391936, ; 436: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 227
	i32 2663698177, ; 437: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 438: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 439: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 440: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2677098746, ; 441: Azure.Identity.dll => 0x9f9148fa => 174
	i32 2678266992, ; 442: tr\Microsoft.Data.SqlClient.resources => 0x9fa31c70 => 319
	i32 2686887180, ; 443: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 444: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 445: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 287
	i32 2715334215, ; 446: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 447: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 448: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 449: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 450: Xamarin.AndroidX.Activity => 0xa2e0939b => 229
	i32 2735172069, ; 451: System.Threading.Channels => 0xa30769e5 => 139
	i32 2737747696, ; 452: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 235
	i32 2740051746, ; 453: Microsoft.Identity.Client => 0xa351df22 => 198
	i32 2740948882, ; 454: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 455: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 456: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 343
	i32 2755098380, ; 457: Microsoft.SqlServer.Server.dll => 0xa437770c => 212
	i32 2758225723, ; 458: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 208
	i32 2764765095, ; 459: Microsoft.Maui.dll => 0xa4caf7a7 => 209
	i32 2765824710, ; 460: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 461: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 301
	i32 2778768386, ; 462: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 292
	i32 2779977773, ; 463: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 280
	i32 2785988530, ; 464: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 349
	i32 2788224221, ; 465: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 258
	i32 2801831435, ; 466: Microsoft.Maui.Graphics => 0xa7008e0b => 211
	i32 2803228030, ; 467: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2804509662, ; 468: es/Microsoft.Data.SqlClient.resources.dll => 0xa7296bde => 311
	i32 2806116107, ; 469: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 328
	i32 2810250172, ; 470: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 245
	i32 2819470561, ; 471: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 472: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 473: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 280
	i32 2824502124, ; 474: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2831556043, ; 475: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 341
	i32 2838993487, ; 476: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 269
	i32 2841355853, ; 477: System.Security.Permissions => 0xa95ba64d => 223
	i32 2841937114, ; 478: it/Microsoft.Data.SqlClient.resources.dll => 0xa96484da => 313
	i32 2849599387, ; 479: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 480: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 292
	i32 2855708567, ; 481: Xamarin.AndroidX.Transition => 0xaa36a797 => 288
	i32 2861098320, ; 482: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 483: Microsoft.Maui.Essentials => 0xaa8a4878 => 210
	i32 2867946736, ; 484: System.Security.Cryptography.ProtectedData => 0xaaf164f0 => 222
	i32 2870099610, ; 485: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 230
	i32 2875164099, ; 486: Jsr305Binding.dll => 0xab5f85c3 => 297
	i32 2875220617, ; 487: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 488: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 256
	i32 2887636118, ; 489: System.Net.dll => 0xac1dd496 => 81
	i32 2891872470, ; 490: cs\Microsoft.Data.SqlClient.resources => 0xac5e78d6 => 309
	i32 2899753641, ; 491: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 492: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 493: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 494: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 495: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2916838712, ; 496: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 293
	i32 2919462931, ; 497: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 498: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 232
	i32 2936416060, ; 499: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 500: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 501: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2944313911, ; 502: System.Configuration.ConfigurationManager.dll => 0xaf7eaa37 => 215
	i32 2959614098, ; 503: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 504: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 505: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 506: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 252
	i32 2987532451, ; 507: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 283
	i32 2996846495, ; 508: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 265
	i32 3012788804, ; 509: System.Configuration.ConfigurationManager => 0xb3938244 => 215
	i32 3016983068, ; 510: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 285
	i32 3023353419, ; 511: WindowsBase.dll => 0xb434b64b => 165
	i32 3023511517, ; 512: ru\Microsoft.Data.SqlClient.resources => 0xb4371fdd => 318
	i32 3024354802, ; 513: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 260
	i32 3025069135, ; 514: K4os.Compression.LZ4.Streams.dll => 0xb44ee44f => 180
	i32 3033605958, ; 515: System.Memory.Data.dll => 0xb4d12746 => 220
	i32 3038032645, ; 516: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 359
	i32 3056245963, ; 517: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 282
	i32 3057625584, ; 518: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 273
	i32 3059408633, ; 519: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 520: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3069363400, ; 521: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 187
	i32 3075834255, ; 522: System.Threading.Tasks => 0xb755818f => 144
	i32 3077302341, ; 523: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 334
	i32 3084678329, ; 524: Microsoft.IdentityModel.Tokens => 0xb7dc74b9 => 205
	i32 3089219899, ; 525: ZstdSharp => 0xb821c13b => 308
	i32 3090735792, ; 526: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 527: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 528: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 529: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 530: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 531: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 532: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 533: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 534: GoogleGson.dll => 0xbba64c02 => 178
	i32 3158628304, ; 535: zh-Hant/Microsoft.Data.SqlClient.resources.dll => 0xbc44d7d0 => 321
	i32 3159123045, ; 536: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 537: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3162411402, ; 538: Konscious.Security.Cryptography.Argon2 => 0xbc7e918a => 182
	i32 3178803400, ; 539: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 274
	i32 3192346100, ; 540: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 541: System.Web => 0xbe592c0c => 153
	i32 3195844289, ; 542: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 187
	i32 3204380047, ; 543: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 544: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 545: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 251
	i32 3213246214, ; 546: System.Security.Permissions.dll => 0xbf863f06 => 223
	i32 3220365878, ; 547: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 548: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 549: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 550: Xamarin.AndroidX.CardView => 0xc235e84d => 239
	i32 3265493905, ; 551: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 552: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3268887220, ; 553: fr/Microsoft.Data.SqlClient.resources.dll => 0xc2d742b4 => 312
	i32 3276600297, ; 554: pt-BR/Microsoft.Data.SqlClient.resources.dll => 0xc34cf3e9 => 317
	i32 3277815716, ; 555: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 556: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 557: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 558: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 559: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 560: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 561: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 329
	i32 3312457198, ; 562: Microsoft.IdentityModel.JsonWebTokens => 0xc57015ee => 201
	i32 3316684772, ; 563: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 564: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 249
	i32 3317144872, ; 565: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 566: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 237
	i32 3343947874, ; 567: fr\Microsoft.Data.SqlClient.resources => 0xc7509862 => 312
	i32 3345895724, ; 568: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 278
	i32 3346324047, ; 569: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 275
	i32 3357674450, ; 570: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 346
	i32 3358260929, ; 571: System.Text.Json => 0xc82afec1 => 137
	i32 3362336904, ; 572: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 230
	i32 3362522851, ; 573: Xamarin.AndroidX.Core => 0xc86c06e3 => 246
	i32 3366347497, ; 574: Java.Interop => 0xc8a662e9 => 168
	i32 3374879918, ; 575: Microsoft.IdentityModel.Protocols.dll => 0xc92894ae => 203
	i32 3374999561, ; 576: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 279
	i32 3381016424, ; 577: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 325
	i32 3381033598, ; 578: K4os.Compression.LZ4 => 0xc9867a7e => 179
	i32 3395150330, ; 579: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 580: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 581: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 250
	i32 3428513518, ; 582: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 191
	i32 3429136800, ; 583: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 584: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 585: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 253
	i32 3445260447, ; 586: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 587: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 206
	i32 3463511458, ; 588: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 333
	i32 3467345667, ; 589: MySql.Data => 0xceab7f03 => 213
	i32 3471940407, ; 590: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 591: Mono.Android => 0xcf3163e6 => 171
	i32 3479583265, ; 592: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 346
	i32 3484440000, ; 593: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 345
	i32 3485117614, ; 594: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 595: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 596: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 242
	i32 3499097210, ; 597: Google.Protobuf.dll => 0xd08ffc7a => 177
	i32 3509114376, ; 598: System.Xml.Linq => 0xd128d608 => 155
	i32 3512826571, ; 599: Microsoft.Bcl.Cryptography.dll => 0xd1617acb => 185
	i32 3515174580, ; 600: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 601: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 602: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3545306353, ; 603: Microsoft.Data.SqlClient => 0xd35114f1 => 186
	i32 3555084973, ; 604: de\Microsoft.Data.SqlClient.resources => 0xd3e64aad => 310
	i32 3558648585, ; 605: System.ClientModel => 0xd41cab09 => 214
	i32 3560100363, ; 606: System.Threading.Timer => 0xd432d20b => 147
	i32 3561949811, ; 607: Azure.Core.dll => 0xd44f0a73 => 173
	i32 3570554715, ; 608: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3580758918, ; 609: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 353
	i32 3597029428, ; 610: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 228
	i32 3598340787, ; 611: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3605570793, ; 612: BouncyCastle.Cryptography => 0xd6e8a4e9 => 175
	i32 3608519521, ; 613: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 614: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 615: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 277
	i32 3633644679, ; 616: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 232
	i32 3638274909, ; 617: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 618: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 263
	i32 3643446276, ; 619: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 350
	i32 3643854240, ; 620: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 274
	i32 3645089577, ; 621: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3645630983, ; 622: Google.Protobuf => 0xd94bea07 => 177
	i32 3657292374, ; 623: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 190
	i32 3660523487, ; 624: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 625: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 626: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 238
	i32 3684561358, ; 627: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 242
	i32 3689375977, ; 628: System.Drawing.Common => 0xdbe768e9 => 217
	i32 3697841164, ; 629: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 355
	i32 3700591436, ; 630: Microsoft.IdentityModel.Abstractions.dll => 0xdc928b4c => 200
	i32 3700866549, ; 631: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 632: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 247
	i32 3716563718, ; 633: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 634: Xamarin.AndroidX.Annotation => 0xdda814c6 => 231
	i32 3724971120, ; 635: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 273
	i32 3732100267, ; 636: System.Net.NameResolution => 0xde7354ab => 67
	i32 3737834244, ; 637: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748102474, ; 638: AcademiaDoZe.Domain.dll => 0xdf67814a => 357
	i32 3748608112, ; 639: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 640: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3786282454, ; 641: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 240
	i32 3792276235, ; 642: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 643: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 206
	i32 3802395368, ; 644: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3803019198, ; 645: zh-Hans/Microsoft.Data.SqlClient.resources.dll => 0xe2ad77be => 320
	i32 3807198597, ; 646: System.Security.Cryptography.Pkcs => 0xe2ed3d85 => 221
	i32 3819260425, ; 647: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 648: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 649: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 650: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 192
	i32 3844307129, ; 651: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3848348906, ; 652: es\Microsoft.Data.SqlClient.resources => 0xe56124ea => 311
	i32 3849253459, ; 653: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3852606132, ; 654: AcademiaDoZe.Infrastructure.dll => 0xe5a21ab4 => 358
	i32 3870376305, ; 655: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 656: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 657: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3879807937, ; 658: AcademiaDoZe.Application => 0xe7412bc1 => 356
	i32 3885497537, ; 659: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 660: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 288
	i32 3888767677, ; 661: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 278
	i32 3889960447, ; 662: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 354
	i32 3896106733, ; 663: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 664: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 246
	i32 3901907137, ; 665: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920810846, ; 666: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 667: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 291
	i32 3928044579, ; 668: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 669: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 670: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 276
	i32 3945713374, ; 671: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 672: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 673: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 234
	i32 3959773229, ; 674: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 265
	i32 3962053212, ; 675: AcademiaDoZe.Presentation.AppMaui.dll => 0xec28225c => 0
	i32 3980434154, ; 676: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 349
	i32 3987592930, ; 677: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 331
	i32 4003436829, ; 678: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 679: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 233
	i32 4023392905, ; 680: System.IO.Pipelines => 0xefd01a89 => 219
	i32 4025784931, ; 681: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 682: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 208
	i32 4054681211, ; 683: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4064142224, ; 684: pl/Microsoft.Data.SqlClient.resources.dll => 0xf23de390 => 316
	i32 4068434129, ; 685: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 686: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4094352644, ; 687: Microsoft.Maui.Essentials.dll => 0xf40add04 => 210
	i32 4099507663, ; 688: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 689: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 690: Xamarin.AndroidX.Emoji2 => 0xf479582c => 254
	i32 4101842092, ; 691: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 188
	i32 4102112229, ; 692: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 344
	i32 4125707920, ; 693: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 339
	i32 4126470640, ; 694: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 191
	i32 4127667938, ; 695: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 696: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 697: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 698: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 351
	i32 4151237749, ; 699: System.Core => 0xf76edc75 => 21
	i32 4158224794, ; 700: Konscious.Security.Cryptography.Blake2.dll => 0xf7d9799a => 183
	i32 4159265925, ; 701: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 702: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 703: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 704: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 705: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 270
	i32 4185676441, ; 706: System.Security => 0xf97c5a99 => 130
	i32 4196529839, ; 707: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 708: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4231294316, ; 709: Konscious.Security.Cryptography.Argon2.dll => 0xfc346d6c => 182
	i32 4256097574, ; 710: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 247
	i32 4257443520, ; 711: ko/Microsoft.Data.SqlClient.resources.dll => 0xfdc36ec0 => 315
	i32 4258378803, ; 712: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 269
	i32 4260525087, ; 713: System.Buffers => 0xfdf2741f => 7
	i32 4263231520, ; 714: System.IdentityModel.Tokens.Jwt.dll => 0xfe1bc020 => 218
	i32 4271975918, ; 715: Microsoft.Maui.Controls.dll => 0xfea12dee => 207
	i32 4274623895, ; 716: CommunityToolkit.Mvvm.dll => 0xfec99597 => 176
	i32 4274976490, ; 717: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 718: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 270
	i32 4294763496 ; 719: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 256
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [720 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 266, ; 3
	i32 300, ; 4
	i32 48, ; 5
	i32 80, ; 6
	i32 145, ; 7
	i32 313, ; 8
	i32 314, ; 9
	i32 30, ; 10
	i32 355, ; 11
	i32 124, ; 12
	i32 211, ; 13
	i32 102, ; 14
	i32 284, ; 15
	i32 107, ; 16
	i32 284, ; 17
	i32 139, ; 18
	i32 304, ; 19
	i32 314, ; 20
	i32 77, ; 21
	i32 124, ; 22
	i32 13, ; 23
	i32 240, ; 24
	i32 318, ; 25
	i32 132, ; 26
	i32 286, ; 27
	i32 151, ; 28
	i32 352, ; 29
	i32 353, ; 30
	i32 18, ; 31
	i32 238, ; 32
	i32 26, ; 33
	i32 260, ; 34
	i32 1, ; 35
	i32 59, ; 36
	i32 42, ; 37
	i32 91, ; 38
	i32 243, ; 39
	i32 320, ; 40
	i32 147, ; 41
	i32 262, ; 42
	i32 259, ; 43
	i32 324, ; 44
	i32 54, ; 45
	i32 69, ; 46
	i32 352, ; 47
	i32 229, ; 48
	i32 83, ; 49
	i32 212, ; 50
	i32 337, ; 51
	i32 261, ; 52
	i32 336, ; 53
	i32 131, ; 54
	i32 316, ; 55
	i32 55, ; 56
	i32 149, ; 57
	i32 74, ; 58
	i32 145, ; 59
	i32 62, ; 60
	i32 146, ; 61
	i32 359, ; 62
	i32 165, ; 63
	i32 319, ; 64
	i32 348, ; 65
	i32 244, ; 66
	i32 12, ; 67
	i32 257, ; 68
	i32 125, ; 69
	i32 152, ; 70
	i32 113, ; 71
	i32 166, ; 72
	i32 164, ; 73
	i32 259, ; 74
	i32 200, ; 75
	i32 272, ; 76
	i32 84, ; 77
	i32 335, ; 78
	i32 329, ; 79
	i32 197, ; 80
	i32 150, ; 81
	i32 304, ; 82
	i32 60, ; 83
	i32 193, ; 84
	i32 51, ; 85
	i32 103, ; 86
	i32 114, ; 87
	i32 184, ; 88
	i32 40, ; 89
	i32 297, ; 90
	i32 295, ; 91
	i32 120, ; 92
	i32 343, ; 93
	i32 52, ; 94
	i32 44, ; 95
	i32 119, ; 96
	i32 180, ; 97
	i32 249, ; 98
	i32 341, ; 99
	i32 255, ; 100
	i32 81, ; 101
	i32 136, ; 102
	i32 291, ; 103
	i32 236, ; 104
	i32 8, ; 105
	i32 73, ; 106
	i32 323, ; 107
	i32 155, ; 108
	i32 306, ; 109
	i32 154, ; 110
	i32 92, ; 111
	i32 301, ; 112
	i32 45, ; 113
	i32 338, ; 114
	i32 221, ; 115
	i32 326, ; 116
	i32 305, ; 117
	i32 109, ; 118
	i32 214, ; 119
	i32 129, ; 120
	i32 25, ; 121
	i32 226, ; 122
	i32 72, ; 123
	i32 55, ; 124
	i32 46, ; 125
	i32 347, ; 126
	i32 196, ; 127
	i32 250, ; 128
	i32 22, ; 129
	i32 264, ; 130
	i32 217, ; 131
	i32 86, ; 132
	i32 43, ; 133
	i32 160, ; 134
	i32 71, ; 135
	i32 277, ; 136
	i32 3, ; 137
	i32 42, ; 138
	i32 63, ; 139
	i32 16, ; 140
	i32 53, ; 141
	i32 350, ; 142
	i32 300, ; 143
	i32 105, ; 144
	i32 305, ; 145
	i32 0, ; 146
	i32 298, ; 147
	i32 261, ; 148
	i32 34, ; 149
	i32 158, ; 150
	i32 213, ; 151
	i32 85, ; 152
	i32 32, ; 153
	i32 12, ; 154
	i32 51, ; 155
	i32 56, ; 156
	i32 281, ; 157
	i32 36, ; 158
	i32 192, ; 159
	i32 325, ; 160
	i32 299, ; 161
	i32 234, ; 162
	i32 35, ; 163
	i32 58, ; 164
	i32 310, ; 165
	i32 268, ; 166
	i32 199, ; 167
	i32 178, ; 168
	i32 17, ; 169
	i32 302, ; 170
	i32 216, ; 171
	i32 164, ; 172
	i32 338, ; 173
	i32 267, ; 174
	i32 195, ; 175
	i32 186, ; 176
	i32 224, ; 177
	i32 294, ; 178
	i32 344, ; 179
	i32 153, ; 180
	i32 290, ; 181
	i32 275, ; 182
	i32 185, ; 183
	i32 342, ; 184
	i32 236, ; 185
	i32 188, ; 186
	i32 29, ; 187
	i32 176, ; 188
	i32 52, ; 189
	i32 340, ; 190
	i32 295, ; 191
	i32 5, ; 192
	i32 324, ; 193
	i32 285, ; 194
	i32 289, ; 195
	i32 241, ; 196
	i32 306, ; 197
	i32 233, ; 198
	i32 252, ; 199
	i32 85, ; 200
	i32 309, ; 201
	i32 294, ; 202
	i32 61, ; 203
	i32 112, ; 204
	i32 57, ; 205
	i32 354, ; 206
	i32 281, ; 207
	i32 99, ; 208
	i32 19, ; 209
	i32 245, ; 210
	i32 111, ; 211
	i32 101, ; 212
	i32 102, ; 213
	i32 322, ; 214
	i32 104, ; 215
	i32 298, ; 216
	i32 71, ; 217
	i32 38, ; 218
	i32 32, ; 219
	i32 103, ; 220
	i32 73, ; 221
	i32 218, ; 222
	i32 328, ; 223
	i32 9, ; 224
	i32 123, ; 225
	i32 46, ; 226
	i32 235, ; 227
	i32 197, ; 228
	i32 356, ; 229
	i32 9, ; 230
	i32 43, ; 231
	i32 4, ; 232
	i32 181, ; 233
	i32 282, ; 234
	i32 332, ; 235
	i32 201, ; 236
	i32 327, ; 237
	i32 31, ; 238
	i32 138, ; 239
	i32 92, ; 240
	i32 93, ; 241
	i32 347, ; 242
	i32 49, ; 243
	i32 141, ; 244
	i32 112, ; 245
	i32 140, ; 246
	i32 174, ; 247
	i32 251, ; 248
	i32 115, ; 249
	i32 321, ; 250
	i32 299, ; 251
	i32 157, ; 252
	i32 76, ; 253
	i32 79, ; 254
	i32 271, ; 255
	i32 37, ; 256
	i32 293, ; 257
	i32 204, ; 258
	i32 255, ; 259
	i32 248, ; 260
	i32 64, ; 261
	i32 138, ; 262
	i32 15, ; 263
	i32 116, ; 264
	i32 287, ; 265
	i32 296, ; 266
	i32 243, ; 267
	i32 48, ; 268
	i32 70, ; 269
	i32 80, ; 270
	i32 126, ; 271
	i32 94, ; 272
	i32 121, ; 273
	i32 303, ; 274
	i32 26, ; 275
	i32 183, ; 276
	i32 264, ; 277
	i32 97, ; 278
	i32 28, ; 279
	i32 239, ; 280
	i32 345, ; 281
	i32 323, ; 282
	i32 149, ; 283
	i32 219, ; 284
	i32 169, ; 285
	i32 4, ; 286
	i32 98, ; 287
	i32 33, ; 288
	i32 93, ; 289
	i32 286, ; 290
	i32 193, ; 291
	i32 21, ; 292
	i32 41, ; 293
	i32 170, ; 294
	i32 339, ; 295
	i32 257, ; 296
	i32 331, ; 297
	i32 198, ; 298
	i32 184, ; 299
	i32 271, ; 300
	i32 302, ; 301
	i32 296, ; 302
	i32 276, ; 303
	i32 2, ; 304
	i32 134, ; 305
	i32 111, ; 306
	i32 194, ; 307
	i32 224, ; 308
	i32 351, ; 309
	i32 226, ; 310
	i32 348, ; 311
	i32 58, ; 312
	i32 95, ; 313
	i32 204, ; 314
	i32 330, ; 315
	i32 39, ; 316
	i32 358, ; 317
	i32 237, ; 318
	i32 25, ; 319
	i32 94, ; 320
	i32 89, ; 321
	i32 99, ; 322
	i32 10, ; 323
	i32 179, ; 324
	i32 87, ; 325
	i32 100, ; 326
	i32 283, ; 327
	i32 189, ; 328
	i32 303, ; 329
	i32 228, ; 330
	i32 205, ; 331
	i32 327, ; 332
	i32 7, ; 333
	i32 268, ; 334
	i32 322, ; 335
	i32 225, ; 336
	i32 199, ; 337
	i32 88, ; 338
	i32 263, ; 339
	i32 154, ; 340
	i32 326, ; 341
	i32 33, ; 342
	i32 116, ; 343
	i32 82, ; 344
	i32 20, ; 345
	i32 11, ; 346
	i32 162, ; 347
	i32 3, ; 348
	i32 209, ; 349
	i32 357, ; 350
	i32 334, ; 351
	i32 196, ; 352
	i32 194, ; 353
	i32 84, ; 354
	i32 307, ; 355
	i32 64, ; 356
	i32 336, ; 357
	i32 290, ; 358
	i32 143, ; 359
	i32 317, ; 360
	i32 272, ; 361
	i32 157, ; 362
	i32 203, ; 363
	i32 41, ; 364
	i32 117, ; 365
	i32 190, ; 366
	i32 227, ; 367
	i32 330, ; 368
	i32 279, ; 369
	i32 131, ; 370
	i32 75, ; 371
	i32 66, ; 372
	i32 340, ; 373
	i32 172, ; 374
	i32 315, ; 375
	i32 231, ; 376
	i32 143, ; 377
	i32 106, ; 378
	i32 151, ; 379
	i32 70, ; 380
	i32 156, ; 381
	i32 202, ; 382
	i32 189, ; 383
	i32 121, ; 384
	i32 127, ; 385
	i32 335, ; 386
	i32 152, ; 387
	i32 254, ; 388
	i32 141, ; 389
	i32 241, ; 390
	i32 332, ; 391
	i32 20, ; 392
	i32 14, ; 393
	i32 135, ; 394
	i32 75, ; 395
	i32 59, ; 396
	i32 244, ; 397
	i32 167, ; 398
	i32 168, ; 399
	i32 207, ; 400
	i32 15, ; 401
	i32 74, ; 402
	i32 181, ; 403
	i32 6, ; 404
	i32 175, ; 405
	i32 23, ; 406
	i32 266, ; 407
	i32 216, ; 408
	i32 225, ; 409
	i32 91, ; 410
	i32 333, ; 411
	i32 1, ; 412
	i32 136, ; 413
	i32 267, ; 414
	i32 289, ; 415
	i32 134, ; 416
	i32 69, ; 417
	i32 146, ; 418
	i32 342, ; 419
	i32 307, ; 420
	i32 308, ; 421
	i32 258, ; 422
	i32 195, ; 423
	i32 88, ; 424
	i32 96, ; 425
	i32 248, ; 426
	i32 253, ; 427
	i32 337, ; 428
	i32 31, ; 429
	i32 220, ; 430
	i32 45, ; 431
	i32 262, ; 432
	i32 202, ; 433
	i32 173, ; 434
	i32 222, ; 435
	i32 227, ; 436
	i32 109, ; 437
	i32 158, ; 438
	i32 35, ; 439
	i32 22, ; 440
	i32 174, ; 441
	i32 319, ; 442
	i32 114, ; 443
	i32 57, ; 444
	i32 287, ; 445
	i32 144, ; 446
	i32 118, ; 447
	i32 120, ; 448
	i32 110, ; 449
	i32 229, ; 450
	i32 139, ; 451
	i32 235, ; 452
	i32 198, ; 453
	i32 54, ; 454
	i32 105, ; 455
	i32 343, ; 456
	i32 212, ; 457
	i32 208, ; 458
	i32 209, ; 459
	i32 133, ; 460
	i32 301, ; 461
	i32 292, ; 462
	i32 280, ; 463
	i32 349, ; 464
	i32 258, ; 465
	i32 211, ; 466
	i32 159, ; 467
	i32 311, ; 468
	i32 328, ; 469
	i32 245, ; 470
	i32 163, ; 471
	i32 132, ; 472
	i32 280, ; 473
	i32 161, ; 474
	i32 341, ; 475
	i32 269, ; 476
	i32 223, ; 477
	i32 313, ; 478
	i32 140, ; 479
	i32 292, ; 480
	i32 288, ; 481
	i32 169, ; 482
	i32 210, ; 483
	i32 222, ; 484
	i32 230, ; 485
	i32 297, ; 486
	i32 40, ; 487
	i32 256, ; 488
	i32 81, ; 489
	i32 309, ; 490
	i32 56, ; 491
	i32 37, ; 492
	i32 97, ; 493
	i32 166, ; 494
	i32 172, ; 495
	i32 293, ; 496
	i32 82, ; 497
	i32 232, ; 498
	i32 98, ; 499
	i32 30, ; 500
	i32 159, ; 501
	i32 215, ; 502
	i32 18, ; 503
	i32 127, ; 504
	i32 119, ; 505
	i32 252, ; 506
	i32 283, ; 507
	i32 265, ; 508
	i32 215, ; 509
	i32 285, ; 510
	i32 165, ; 511
	i32 318, ; 512
	i32 260, ; 513
	i32 180, ; 514
	i32 220, ; 515
	i32 359, ; 516
	i32 282, ; 517
	i32 273, ; 518
	i32 170, ; 519
	i32 16, ; 520
	i32 187, ; 521
	i32 144, ; 522
	i32 334, ; 523
	i32 205, ; 524
	i32 308, ; 525
	i32 125, ; 526
	i32 118, ; 527
	i32 38, ; 528
	i32 115, ; 529
	i32 47, ; 530
	i32 142, ; 531
	i32 117, ; 532
	i32 34, ; 533
	i32 178, ; 534
	i32 321, ; 535
	i32 95, ; 536
	i32 53, ; 537
	i32 182, ; 538
	i32 274, ; 539
	i32 129, ; 540
	i32 153, ; 541
	i32 187, ; 542
	i32 24, ; 543
	i32 161, ; 544
	i32 251, ; 545
	i32 223, ; 546
	i32 148, ; 547
	i32 104, ; 548
	i32 89, ; 549
	i32 239, ; 550
	i32 60, ; 551
	i32 142, ; 552
	i32 312, ; 553
	i32 317, ; 554
	i32 100, ; 555
	i32 5, ; 556
	i32 13, ; 557
	i32 122, ; 558
	i32 135, ; 559
	i32 28, ; 560
	i32 329, ; 561
	i32 201, ; 562
	i32 72, ; 563
	i32 249, ; 564
	i32 24, ; 565
	i32 237, ; 566
	i32 312, ; 567
	i32 278, ; 568
	i32 275, ; 569
	i32 346, ; 570
	i32 137, ; 571
	i32 230, ; 572
	i32 246, ; 573
	i32 168, ; 574
	i32 203, ; 575
	i32 279, ; 576
	i32 325, ; 577
	i32 179, ; 578
	i32 101, ; 579
	i32 123, ; 580
	i32 250, ; 581
	i32 191, ; 582
	i32 163, ; 583
	i32 167, ; 584
	i32 253, ; 585
	i32 39, ; 586
	i32 206, ; 587
	i32 333, ; 588
	i32 213, ; 589
	i32 17, ; 590
	i32 171, ; 591
	i32 346, ; 592
	i32 345, ; 593
	i32 137, ; 594
	i32 150, ; 595
	i32 242, ; 596
	i32 177, ; 597
	i32 155, ; 598
	i32 185, ; 599
	i32 130, ; 600
	i32 19, ; 601
	i32 65, ; 602
	i32 186, ; 603
	i32 310, ; 604
	i32 214, ; 605
	i32 147, ; 606
	i32 173, ; 607
	i32 47, ; 608
	i32 353, ; 609
	i32 228, ; 610
	i32 79, ; 611
	i32 175, ; 612
	i32 61, ; 613
	i32 106, ; 614
	i32 277, ; 615
	i32 232, ; 616
	i32 49, ; 617
	i32 263, ; 618
	i32 350, ; 619
	i32 274, ; 620
	i32 14, ; 621
	i32 177, ; 622
	i32 190, ; 623
	i32 68, ; 624
	i32 171, ; 625
	i32 238, ; 626
	i32 242, ; 627
	i32 217, ; 628
	i32 355, ; 629
	i32 200, ; 630
	i32 78, ; 631
	i32 247, ; 632
	i32 108, ; 633
	i32 231, ; 634
	i32 273, ; 635
	i32 67, ; 636
	i32 63, ; 637
	i32 357, ; 638
	i32 27, ; 639
	i32 160, ; 640
	i32 240, ; 641
	i32 10, ; 642
	i32 206, ; 643
	i32 11, ; 644
	i32 320, ; 645
	i32 221, ; 646
	i32 78, ; 647
	i32 126, ; 648
	i32 83, ; 649
	i32 192, ; 650
	i32 66, ; 651
	i32 311, ; 652
	i32 107, ; 653
	i32 358, ; 654
	i32 65, ; 655
	i32 128, ; 656
	i32 122, ; 657
	i32 356, ; 658
	i32 77, ; 659
	i32 288, ; 660
	i32 278, ; 661
	i32 354, ; 662
	i32 8, ; 663
	i32 246, ; 664
	i32 2, ; 665
	i32 44, ; 666
	i32 291, ; 667
	i32 156, ; 668
	i32 128, ; 669
	i32 276, ; 670
	i32 23, ; 671
	i32 133, ; 672
	i32 234, ; 673
	i32 265, ; 674
	i32 0, ; 675
	i32 349, ; 676
	i32 331, ; 677
	i32 29, ; 678
	i32 233, ; 679
	i32 219, ; 680
	i32 62, ; 681
	i32 208, ; 682
	i32 90, ; 683
	i32 316, ; 684
	i32 87, ; 685
	i32 148, ; 686
	i32 210, ; 687
	i32 36, ; 688
	i32 86, ; 689
	i32 254, ; 690
	i32 188, ; 691
	i32 344, ; 692
	i32 339, ; 693
	i32 191, ; 694
	i32 50, ; 695
	i32 6, ; 696
	i32 90, ; 697
	i32 351, ; 698
	i32 21, ; 699
	i32 183, ; 700
	i32 162, ; 701
	i32 96, ; 702
	i32 50, ; 703
	i32 113, ; 704
	i32 270, ; 705
	i32 130, ; 706
	i32 76, ; 707
	i32 27, ; 708
	i32 182, ; 709
	i32 247, ; 710
	i32 315, ; 711
	i32 269, ; 712
	i32 7, ; 713
	i32 218, ; 714
	i32 207, ; 715
	i32 176, ; 716
	i32 110, ; 717
	i32 270, ; 718
	i32 256 ; 719
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ 82d8938cf80f6d5fa6c28529ddfbdb753d805ab4"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
