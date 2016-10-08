.class public Lcom/tencent/tauth/Tencent;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field static sessionMap:Ljava/util/HashMap;


# instance fields
.field private mOpenApi:Lcom/tencent/open/OpenApi;

.field private mOpenUi:Lcom/tencent/open/OpenUi;

.field private mTContext:Lcom/tencent/open/TContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tauth/Tencent;->sessionMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, "openSDK_LOG"

    const-string v1, "new Tencent() --start"

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance v0, Lcom/tencent/open/TContext;

    invoke-direct {v0, p1, p2}, Lcom/tencent/open/TContext;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/tauth/Tencent;->mTContext:Lcom/tencent/open/TContext;

    .line 62
    new-instance v0, Lcom/tencent/open/OpenApi;

    iget-object v1, p0, Lcom/tencent/tauth/Tencent;->mTContext:Lcom/tencent/open/TContext;

    invoke-direct {v0, v1}, Lcom/tencent/open/OpenApi;-><init>(Lcom/tencent/open/TContext;)V

    iput-object v0, p0, Lcom/tencent/tauth/Tencent;->mOpenApi:Lcom/tencent/open/OpenApi;

    .line 63
    new-instance v0, Lcom/tencent/open/OpenUi;

    iget-object v1, p0, Lcom/tencent/tauth/Tencent;->mTContext:Lcom/tencent/open/TContext;

    invoke-direct {v0, v1}, Lcom/tencent/open/OpenUi;-><init>(Lcom/tencent/open/TContext;)V

    iput-object v0, p0, Lcom/tencent/tauth/Tencent;->mOpenUi:Lcom/tencent/open/OpenUi;

    .line 67
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mTContext:Lcom/tencent/open/TContext;

    invoke-static {v0, p1}, Lcom/tencent/open/TencentStat;->a(Lcom/tencent/open/TContext;Ljava/lang/String;)V

    .line 68
    const-string v0, "openSDK_LOG"

    const-string v1, "new Tencent() --end"

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/tauth/Tencent;Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/tauth/Tencent;->doShareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method public static createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;
    .locals 3

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/record/info/Global;->a(Landroid/content/Context;)V

    .line 82
    const-string v0, "openSDK_LOG"

    const-string v1, "createInstance() --start"

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcom/tencent/tauth/Tencent;->sessionMap:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/tauth/Tencent;->sessionMap:Ljava/util/HashMap;

    .line 92
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.tencent.tauth.AuthActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 96
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    new-instance v0, Lcom/tencent/tauth/Tencent;

    invoke-direct {v0, p0, p1}, Lcom/tencent/tauth/Tencent;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 121
    sget-object v1, Lcom/tencent/tauth/Tencent;->sessionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v1, "openSDK_LOG"

    const-string v2, "createInstance()  --end"

    invoke-static {v1, v2}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :goto_0
    return-object v0

    .line 86
    :cond_1
    sget-object v0, Lcom/tencent/tauth/Tencent;->sessionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const-string v0, "openSDK_LOG"

    const-string v1, "createInstance() ,sessionMap.containsKey --end"

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    sget-object v0, Lcom/tencent/tauth/Tencent;->sessionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tauth/Tencent;

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6ca1\u6709\u5728AndroidManifest.xml\u4e2d\u68c0\u6d4b\u5230com.tencent.tauth.AuthActivity,\u8bf7\u52a0\u4e0acom.tencent.open.AuthActivity,\u5e76\u914d\u7f6e<data android:scheme=\"tencent"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" />,\u8be6\u7ec6\u4fe1\u606f\u8bf7\u67e5\u770b\u5b98\u7f51\u6587\u6863."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\u914d\u7f6e\u793a\u4f8b\u5982\u4e0b: \n<activity\n     android:name=\"com.tencent.tauth.AuthActivity\"\n     android:noHistory=\"true\"\n     android:launchMode=\"singleTask\">\n<intent-filter>\n    <action android:name=\"android.intent.action.VIEW\" />\n     <category android:name=\"android.intent.category.DEFAULT\" />\n    <category android:name=\"android.intent.category.BROWSABLE\" />\n    <data android:scheme=\"tencent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" />\n</intent-filter>\n</activity>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string v1, "openSDK_LOG"

    const-string v2, "createInstance() error --end"

    invoke-static {v1, v2, v0}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doShareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 12

    .prologue
    .line 780
    const-string v0, "openSDK_LOG"

    const-string v1, "doShareToQQ() --start"

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    if-nez p2, :cond_0

    .line 782
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 784
    :cond_0
    const-string v0, "mqqapi://share/to_fri?src_type=app&version=1&file_type=news"

    .line 785
    const-string v1, "imageUrl"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 786
    const-string v1, "title"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 787
    const-string v1, "summary"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 788
    const-string v1, "targetUrl"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 789
    const-string v1, "appName"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 790
    const-string v6, "imageLocalUrl"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 792
    invoke-virtual {p0}, Lcom/tencent/tauth/Tencent;->getAppId()Ljava/lang/String;

    move-result-object v7

    .line 793
    invoke-virtual {p0}, Lcom/tencent/tauth/Tencent;->getOpenId()Ljava/lang/String;

    move-result-object v8

    .line 795
    const-string v9, "shareToQQ"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "openId:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    invoke-static {v2}, Lcom/tencent/open/Util;->e(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 798
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "&image_url="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v9, 0x2

    invoke-static {v2, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 800
    :cond_1
    invoke-static {v6}, Lcom/tencent/open/Util;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 801
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&file_data="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v6, 0x2

    invoke-static {v2, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 803
    :cond_2
    invoke-static {v3}, Lcom/tencent/open/Util;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 804
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&title="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 806
    :cond_3
    invoke-static {v4}, Lcom/tencent/open/Util;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 807
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&description="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 809
    :cond_4
    invoke-static {v7}, Lcom/tencent/open/Util;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 810
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&share_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 812
    :cond_5
    invoke-static {v5}, Lcom/tencent/open/Util;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 813
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&url="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 815
    :cond_6
    invoke-static {v1}, Lcom/tencent/open/Util;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 816
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x14

    if-le v2, v3, :cond_7

    .line 817
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/16 v4, 0x14

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 819
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&app_name="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 822
    :cond_8
    invoke-static {v8}, Lcom/tencent/open/Util;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 823
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&open_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 826
    :cond_9
    const-string v1, "shareToQQ"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    iget-object v1, p0, Lcom/tencent/tauth/Tencent;->mTContext:Lcom/tencent/open/TContext;

    const-string v2, "requireApi"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "shareToNativeQQ"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/open/TencentStat;->a(Lcom/tencent/open/TContext;Ljava/lang/String;[Ljava/lang/String;)V

    .line 829
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 830
    const-string v2, "scheme"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mOpenUi:Lcom/tencent/open/OpenUi;

    const-string v2, "action_share_qq"

    invoke-virtual {v0, p1, v2, v1, p3}, Lcom/tencent/open/OpenUi;->b(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)Z

    move-result v0

    .line 833
    if-nez v0, :cond_a

    .line 834
    if-eqz p3, :cond_a

    .line 835
    new-instance v0, Lcom/tencent/tauth/UiError;

    const/4 v1, -0x6

    const-string v2, "\u5206\u4eab\u7684\u624b\u673aQQ\u5931\u8d25!"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    .line 845
    :cond_a
    const-string v0, "openSDK_LOG"

    const-string v1, "doShareToQQ() --end"

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    return-void
.end method

.method private fillShareToQQParams(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x50

    const/16 v5, 0x28

    const/4 v4, 0x0

    .line 882
    const-string v0, "openSDK_LOG"

    const-string v1, "fillShareToQQParams() --start"

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    const-string v0, "..."

    .line 884
    const-string v1, "action"

    const-string v2, "shareToQQ"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    const-string v1, "appId"

    invoke-virtual {p0}, Lcom/tencent/tauth/Tencent;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    const-string v1, "sdkp"

    const-string v2, "a"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    const-string v1, "sdkv"

    const-string v2, "1.8"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    const-string v1, "status_os"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    const-string v1, "status_machine"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    const-string v1, "content"

    .line 893
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_0

    .line 894
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    :cond_0
    const-string v1, "summary"

    .line 897
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v6, :cond_1

    .line 898
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    :cond_1
    invoke-static {p2}, Lcom/tencent/open/Util;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 903
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\+"

    const-string v3, "%20"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 904
    const-string v1, "openSDK_LOG"

    const-string v2, "fillShareToQQParams() --end"

    invoke-static {v1, v2}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    return-object v0
.end method

.method private shareToH5QQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 6

    .prologue
    .line 852
    const-string v0, "openSDK_LOG"

    const-string v1, "shareToH5QQ() --start"

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    const-string v1, "http://openmobile.qq.com/api/check?page=shareindex.html&style=9"

    .line 854
    const-string v0, "shareToQQ"

    invoke-static {v0, p3}, Lcom/tencent/open/TemporaryStorage;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 855
    if-eqz v0, :cond_0

    .line 856
    check-cast v0, Lcom/tencent/tauth/IUiListener;

    invoke-interface {v0}, Lcom/tencent/tauth/IUiListener;->onCancel()V

    .line 858
    :cond_0
    if-nez p2, :cond_1

    .line 859
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 861
    :cond_1
    invoke-direct {p0, v1, p2}, Lcom/tencent/tauth/Tencent;->fillShareToQQParams(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 862
    iget-object v1, p0, Lcom/tencent/tauth/Tencent;->mTContext:Lcom/tencent/open/TContext;

    const-string v2, "requireApi"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "shareToH5QQ"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/open/TencentStat;->a(Lcom/tencent/open/TContext;Ljava/lang/String;[Ljava/lang/String;)V

    .line 863
    invoke-static {p1, v0}, Lcom/tencent/open/Util;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 864
    if-nez v0, :cond_2

    .line 865
    if-eqz p3, :cond_2

    .line 866
    new-instance v0, Lcom/tencent/tauth/UiError;

    const/4 v1, -0x6

    const-string v2, "\u6253\u5f00\u6d4f\u89c8\u5668\u5931\u8d25!"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    .line 870
    :cond_2
    const-string v0, "openSDK_LOG"

    const-string v1, "shareToH5QQ() --end"

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    return-void
.end method

.method private shareToMobileQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 9

    .prologue
    .line 724
    const-string v0, "openSDK_LOG"

    const-string v1, "shareToMobileQQ() --start"

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    const-string v0, "shareToQQ"

    invoke-static {v0, p3}, Lcom/tencent/open/TemporaryStorage;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 726
    if-eqz v0, :cond_0

    .line 727
    check-cast v0, Lcom/tencent/tauth/IUiListener;

    invoke-interface {v0}, Lcom/tencent/tauth/IUiListener;->onCancel()V

    .line 730
    :cond_0
    const-string v0, "imageUrl"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 731
    const-string v0, "title"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 732
    const-string v0, "summary"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 734
    const-string v0, "shareToQQ"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "imageUrl:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", title:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",summary:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    if-eqz v7, :cond_2

    const-string v0, ""

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "http://"

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 740
    invoke-static {v3}, Lcom/tencent/open/Util;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v4}, Lcom/tencent/open/Util;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/open/Util;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 741
    new-instance v0, Lcom/tencent/tauth/UiError;

    const/4 v1, -0x6

    const-string v2, "\u5206\u4eab\u56fe\u7247\u5931\u8d25\uff0c\u68c0\u6d4b\u4e0d\u5230SD\u5361!"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    .line 743
    const-string v0, "shareToQQ"

    const-string v1, "\u5206\u4eab\u56fe\u7247\u5931\u8d25\uff0c\u68c0\u6d4b\u4e0d\u5230SD\u5361!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    :goto_0
    return-void

    .line 748
    :cond_1
    new-instance v8, Lcom/tencent/open/AsynLoadImg;

    invoke-direct {v8, p1}, Lcom/tencent/open/AsynLoadImg;-><init>(Landroid/app/Activity;)V

    .line 750
    new-instance v0, Lcom/tencent/tauth/f;

    move-object v1, p0

    move-object v2, p2

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/tencent/tauth/f;-><init>(Lcom/tencent/tauth/Tencent;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Landroid/app/Activity;)V

    invoke-virtual {v8, v7, v0}, Lcom/tencent/open/AsynLoadImg;->a(Ljava/lang/String;Lcom/tencent/open/AsynLoadImgBack;)V

    .line 772
    :goto_1
    const-string v0, "openSDK_LOG"

    const-string v1, "shareToMobileQQ() --start"

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 770
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/tauth/Tencent;->doShareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    goto :goto_1
.end method


# virtual methods
.method public ask(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I
    .locals 3

    .prologue
    .line 360
    const-string v0, "type"

    const-string v1, "request"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string v0, "openSDK_LOG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ask(), params = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mOpenUi:Lcom/tencent/open/OpenUi;

    const-string v1, "action_ask"

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/tencent/open/OpenUi;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I

    move-result v0

    return v0
.end method

.method public brag(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I
    .locals 3

    .prologue
    .line 456
    const-string v0, "type"

    const-string v1, "brag"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const-string v0, "openSDK_LOG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "brag(), params = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mOpenUi:Lcom/tencent/open/OpenUi;

    const-string v1, "action_brag"

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/tencent/open/OpenUi;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I

    move-result v0

    return v0
.end method

.method public challenge(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I
    .locals 3

    .prologue
    .line 433
    const-string v0, "type"

    const-string v1, "pk"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string v0, "openSDK_LOG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "challenge(), params = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mOpenUi:Lcom/tencent/open/OpenUi;

    const-string v1, "action_challenge"

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/tencent/open/OpenUi;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I

    move-result v0

    return v0
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    const-string v0, "openSDK_LOG"

    const-string v1, "getAccessToken()"

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mTContext:Lcom/tencent/open/TContext;

    invoke-virtual {v0}, Lcom/tencent/open/TContext;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 216
    const-string v0, "openSDK_LOG"

    const-string v1, "getAppId()"

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mTContext:Lcom/tencent/open/TContext;

    invoke-virtual {v0}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpiresIn()J
    .locals 2

    .prologue
    .line 204
    const-string v0, "openSDK_LOG"

    const-string v1, "getExpiresIn()"

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mTContext:Lcom/tencent/open/TContext;

    invoke-virtual {v0}, Lcom/tencent/open/TContext;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOpenId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 184
    const-string v0, "openSDK_LOG"

    const-string v1, "getOpenId()"

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mTContext:Lcom/tencent/open/TContext;

    invoke-virtual {v0}, Lcom/tencent/open/TContext;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 587
    invoke-static {}, Lcom/tencent/open/OpenApi;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public gift(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I
    .locals 3

    .prologue
    .line 383
    const-string v0, "type"

    const-string v1, "freegift"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string v0, "openSDK_LOG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "gift(), params = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mOpenUi:Lcom/tencent/open/OpenUi;

    const-string v1, "action_gift"

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/tencent/open/OpenUi;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I

    move-result v0

    return v0
.end method

.method public invite(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I
    .locals 5

    .prologue
    .line 312
    const-string v0, "openSDK_LOG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invite(), params = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mTContext:Lcom/tencent/open/TContext;

    const-string v1, "requireApi"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "invite"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/open/TencentStat;->a(Lcom/tencent/open/TContext;Ljava/lang/String;[Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mOpenUi:Lcom/tencent/open/OpenUi;

    const-string v1, "action_invite"

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/tencent/open/OpenUi;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I

    move-result v0

    return v0
.end method

.method public isSessionValid()Z
    .locals 3

    .prologue
    .line 133
    const-string v1, "openSDK_LOG"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "isSessionValid(), result = "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mTContext:Lcom/tencent/open/TContext;

    invoke-virtual {v0}, Lcom/tencent/open/TContext;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mTContext:Lcom/tencent/open/TContext;

    invoke-virtual {v0}, Lcom/tencent/open/TContext;->a()Z

    move-result v0

    return v0

    .line 133
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public login(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I
    .locals 3

    .prologue
    .line 239
    const-string v0, "openSDK_LOG"

    const-string v1, "login()"

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 241
    const-string v1, "scope"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    sget-object v1, Lcom/tencent/tauth/Tencent;->sessionMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/tencent/tauth/Tencent;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object v1, p0, Lcom/tencent/tauth/Tencent;->mOpenUi:Lcom/tencent/open/OpenUi;

    const-string v2, "action_login"

    invoke-virtual {v1, p1, v2, v0, p3}, Lcom/tencent/open/OpenUi;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I

    move-result v0

    return v0
.end method

.method public logout(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 282
    const-string v0, "openSDK_LOG"

    const-string v1, "logout() --start"

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 288
    invoke-virtual {p0, v2, v2}, Lcom/tencent/tauth/Tencent;->setAccessToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0, v2}, Lcom/tencent/tauth/Tencent;->setOpenId(Ljava/lang/String;)V

    .line 290
    sget-object v0, Lcom/tencent/tauth/Tencent;->sessionMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/tencent/tauth/Tencent;->mTContext:Lcom/tencent/open/TContext;

    invoke-virtual {v1}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string v0, "openSDK_LOG"

    const-string v1, "logout() --end"

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 3

    .prologue
    .line 576
    const-string v0, "openSDK_LOG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityResult() ,resultCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mOpenUi:Lcom/tencent/open/OpenUi;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/open/OpenUi;->a(IILandroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public pay(Landroid/app/Activity;Lcom/tencent/tauth/IUiListener;)I
    .locals 3

    .prologue
    .line 409
    const-string v0, "openSDK_LOG"

    const-string v1, "pay()"

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 411
    const-string v1, "scope"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v1, p0, Lcom/tencent/tauth/Tencent;->mOpenUi:Lcom/tencent/open/OpenUi;

    const-string v2, "action_pay"

    invoke-virtual {v1, p1, v2, v0, p2}, Lcom/tencent/open/OpenUi;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I

    move-result v0

    return v0
.end method

.method public reAuth(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I
    .locals 6

    .prologue
    .line 266
    const-string v0, "openSDK_LOG"

    const-string v1, "reAuth()"

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 268
    const-string v0, "scope"

    invoke-virtual {v3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v0, "isadd"

    const-string v1, "1"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mOpenUi:Lcom/tencent/open/OpenUi;

    const-string v2, "action_login"

    const/4 v5, 0x1

    move-object v1, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/open/OpenUi;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;Z)I

    move-result v0

    return v0
.end method

.method public request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 500
    const-string v0, "openSDK_LOG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "request() ,graphPath = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mOpenApi:Lcom/tencent/open/OpenApi;

    iget-object v1, p0, Lcom/tencent/tauth/Tencent;->mTContext:Lcom/tencent/open/TContext;

    invoke-virtual {v1}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/tencent/open/OpenApi;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public requestAsync(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 550
    const-string v0, "openSDK_LOG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestAsync() ,graphPath = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mOpenApi:Lcom/tencent/open/OpenApi;

    iget-object v1, p0, Lcom/tencent/tauth/Tencent;->mTContext:Lcom/tencent/open/TContext;

    invoke-virtual {v1}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/open/OpenApi;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;Ljava/lang/Object;)V

    .line 553
    return-void
.end method

.method public requestSync(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 505
    const-string v0, "openSDK_LOG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestSync() ,graphPath = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const/4 v0, 0x0

    .line 508
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tauth/Tencent;->mOpenApi:Lcom/tencent/open/OpenApi;

    iget-object v2, p0, Lcom/tencent/tauth/Tencent;->mTContext:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/tencent/open/OpenApi;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 512
    :goto_0
    return-object v0

    .line 509
    :catch_0
    move-exception v1

    .line 510
    const-string v2, "openSDK_LOG"

    const-string v3, "requestSync() error"

    invoke-static {v2, v3, v1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setAccessToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 169
    const-string v0, "openSDK_LOG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setAccessToken(), expiresIn = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mTContext:Lcom/tencent/open/TContext;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/open/TContext;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public setAvatar(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 603
    const-string v0, "openSDK_LOG"

    const-string v1, "setAvatar() --start"

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/tauth/Tencent;->setAvatar(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    .line 605
    const-string v0, "openSDK_LOG"

    const-string v1, "setAvatar() --end"

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    return-void
.end method

.method public setAvatar(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 4

    .prologue
    .line 623
    const-string v0, "appid"

    iget-object v1, p0, Lcom/tencent/tauth/Tencent;->mTContext:Lcom/tencent/open/TContext;

    invoke-virtual {v1}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const-string v0, "access_token"

    iget-object v1, p0, Lcom/tencent/tauth/Tencent;->mTContext:Lcom/tencent/open/TContext;

    invoke-virtual {v1}, Lcom/tencent/open/TContext;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    const-string v0, "expires_in"

    iget-object v1, p0, Lcom/tencent/tauth/Tencent;->mTContext:Lcom/tencent/open/TContext;

    invoke-virtual {v1}, Lcom/tencent/open/TContext;->e()J

    move-result-wide v2

    invoke-virtual {p2, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 626
    const-string v0, "openid"

    iget-object v1, p0, Lcom/tencent/tauth/Tencent;->mTContext:Lcom/tencent/open/TContext;

    invoke-virtual {v1}, Lcom/tencent/open/TContext;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mOpenUi:Lcom/tencent/open/OpenUi;

    const-string v1, "action_avatar"

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/tencent/open/OpenUi;->b(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)Z

    .line 629
    return-void
.end method

.method public setAvatar(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;II)V
    .locals 1

    .prologue
    .line 650
    const-string v0, "exitAnim"

    invoke-virtual {p2, v0, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 652
    const/4 v0, 0x0

    invoke-virtual {p1, p4, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 654
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/tauth/Tencent;->setAvatar(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    .line 655
    return-void
.end method

.method public setOpenId(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 197
    const-string v0, "openSDK_LOG"

    const-string v1, "setOpenId() --start"

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mTContext:Lcom/tencent/open/TContext;

    invoke-virtual {v0, p1}, Lcom/tencent/open/TContext;->a(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mTContext:Lcom/tencent/open/TContext;

    invoke-static {v0, p1}, Lcom/tencent/open/TencentStat;->b(Lcom/tencent/open/TContext;Ljava/lang/String;)V

    .line 200
    const-string v0, "openSDK_LOG"

    const-string v1, "setOpenId() --end"

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x50

    const/16 v7, 0x28

    const/4 v6, 0x0

    const/4 v5, -0x6

    .line 669
    const-string v0, "openSDK_LOG"

    const-string v1, "shareToQQ() --start"

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    const-string v0, "imageUrl"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 671
    const-string v1, "title"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 672
    const-string v1, "summary"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 673
    const-string v1, "targetUrl"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 675
    invoke-static {v0}, Lcom/tencent/open/Util;->e(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "http://"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "https://"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 677
    const-string v0, ""

    .line 679
    :cond_0
    invoke-static {v1}, Lcom/tencent/open/Util;->e(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "http://"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "https://"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 681
    const-string v1, ""

    .line 685
    :cond_1
    invoke-static {}, Lcom/tencent/open/Util;->b()Z

    move-result v4

    if-nez v4, :cond_2

    .line 686
    new-instance v0, Lcom/tencent/tauth/UiError;

    const-string v1, "\u5206\u4eab\u56fe\u7247\u5931\u8d25\uff0c\u68c0\u6d4b\u4e0d\u5230SD\u5361!"

    invoke-direct {v0, v5, v1, v9}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    .line 688
    const-string v0, "shareToQQ"

    const-string v1, "\u5206\u4eab\u56fe\u7247\u5931\u8d25\uff0c\u68c0\u6d4b\u4e0d\u5230SD\u5361!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    const-string v0, "openSDK_LOG"

    const-string v1, "shareToQQ() sdcard is null--end"

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    :goto_0
    return-void

    .line 694
    :cond_2
    invoke-static {v2}, Lcom/tencent/open/Util;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v3}, Lcom/tencent/open/Util;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v0}, Lcom/tencent/open/Util;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    invoke-static {v1}, Lcom/tencent/open/Util;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 696
    :cond_4
    new-instance v0, Lcom/tencent/tauth/UiError;

    const-string v1, "\u4f20\u5165\u53c2\u6570\u6709\u8bef!"

    invoke-direct {v0, v5, v1, v9}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    .line 698
    const-string v0, "openSDK_LOG"

    const-string v1, "shareToQQ() both null--end"

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 701
    :cond_5
    const-string v0, "..."

    .line 702
    invoke-static {v2}, Lcom/tencent/open/Util;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v7, :cond_6

    .line 703
    const-string v1, "title"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    :cond_6
    invoke-static {v3}, Lcom/tencent/open/Util;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v8, :cond_7

    .line 706
    const-string v1, "summary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    :cond_7
    invoke-static {p1}, Lcom/tencent/open/Util;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 710
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/tauth/Tencent;->shareToMobileQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    .line 714
    :goto_1
    const-string v0, "openSDK_LOG"

    const-string v1, "shareToQQ() --end"

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 712
    :cond_8
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/tauth/Tencent;->shareToH5QQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    goto :goto_1
.end method

.method public story(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I
    .locals 5

    .prologue
    .line 336
    const-string v0, "openSDK_LOG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "story(), params = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mTContext:Lcom/tencent/open/TContext;

    const-string v1, "requireApi"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "story"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/open/TencentStat;->a(Lcom/tencent/open/TContext;Ljava/lang/String;[Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mOpenUi:Lcom/tencent/open/OpenUi;

    const-string v1, "action_story"

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/tencent/open/OpenUi;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I

    move-result v0

    return v0
.end method

.method public upload(Ljava/lang/String;Landroid/os/Bundle;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 523
    const-string v0, "openSDK_LOG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "upload() ,graphPath = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const/4 v0, 0x0

    .line 526
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tauth/Tencent;->mOpenApi:Lcom/tencent/open/OpenApi;

    iget-object v2, p0, Lcom/tencent/tauth/Tencent;->mTContext:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/tencent/open/OpenApi;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 530
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
