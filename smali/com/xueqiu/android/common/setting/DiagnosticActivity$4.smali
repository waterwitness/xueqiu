.class final Lcom/xueqiu/android/common/setting/DiagnosticActivity$4;
.super Ljava/lang/Object;
.source "DiagnosticActivity.java"

# interfaces
.implements Lrx/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/setting/DiagnosticActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/b",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/model/User;

.field final synthetic b:Lcom/xueqiu/android/common/setting/DiagnosticActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/setting/DiagnosticActivity;Lcom/xueqiu/android/community/model/User;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/xueqiu/android/common/setting/DiagnosticActivity$4;->b:Lcom/xueqiu/android/common/setting/DiagnosticActivity;

    iput-object p2, p0, Lcom/xueqiu/android/common/setting/DiagnosticActivity$4;->a:Lcom/xueqiu/android/community/model/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 12

    .prologue
    const/16 v3, 0x1bb

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 97
    check-cast p1, Lrx/i;

    .line 1100
    new-instance v4, Lcom/xueqiu/android/base/c/a;

    iget-object v0, p0, Lcom/xueqiu/android/common/setting/DiagnosticActivity$4;->b:Lcom/xueqiu/android/common/setting/DiagnosticActivity;

    invoke-direct {v4, v0}, Lcom/xueqiu/android/base/c/a;-><init>(Landroid/content/Context;)V

    .line 1101
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/DiagnosticActivity$4;->b:Lcom/xueqiu/android/common/setting/DiagnosticActivity;

    const v1, 0x7f070569

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/setting/DiagnosticActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1102
    const-string v0, "%s: %d"

    new-array v1, v10, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xueqiu/android/common/setting/DiagnosticActivity$4;->b:Lcom/xueqiu/android/common/setting/DiagnosticActivity;

    const v6, 0x7f070567

    invoke-virtual {v5, v6}, Lcom/xueqiu/android/common/setting/DiagnosticActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    iget-object v5, p0, Lcom/xueqiu/android/common/setting/DiagnosticActivity$4;->a:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v5}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1103
    const-string v0, "%s: %s"

    new-array v1, v10, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xueqiu/android/common/setting/DiagnosticActivity$4;->b:Lcom/xueqiu/android/common/setting/DiagnosticActivity;

    const v6, 0x7f070186

    invoke-virtual {v5, v6}, Lcom/xueqiu/android/common/setting/DiagnosticActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const-string v5, ""

    aput-object v5, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1104
    const-string v0, ""

    invoke-virtual {p1, v0}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1105
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/DiagnosticActivity$4;->b:Lcom/xueqiu/android/common/setting/DiagnosticActivity;

    const v1, 0x7f070089

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/setting/DiagnosticActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1106
    const-string v0, "%s: %s-%s"

    new-array v1, v11, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xueqiu/android/common/setting/DiagnosticActivity$4;->b:Lcom/xueqiu/android/common/setting/DiagnosticActivity;

    const v6, 0x7f07008a

    invoke-virtual {v5, v6}, Lcom/xueqiu/android/common/setting/DiagnosticActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const-string v5, "8.5"

    aput-object v5, v1, v9

    .line 2041
    invoke-static {}, Lcom/xueqiu/android/base/g;->a()Lcom/xueqiu/android/base/f;

    move-result-object v5

    .line 1106
    invoke-virtual {v5}, Lcom/xueqiu/android/base/f;->a()Lcom/xueqiu/android/common/model/ClientInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xueqiu/android/common/model/ClientInfo;->getBuildNumber()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v10

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1107
    const-string v0, "%s: %s"

    new-array v1, v10, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xueqiu/android/common/setting/DiagnosticActivity$4;->b:Lcom/xueqiu/android/common/setting/DiagnosticActivity;

    const v6, 0x7f07015c

    invoke-virtual {v5, v6}, Lcom/xueqiu/android/common/setting/DiagnosticActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v5, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1108
    const-string v0, "%s: %s %s"

    new-array v1, v11, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xueqiu/android/common/setting/DiagnosticActivity$4;->b:Lcom/xueqiu/android/common/setting/DiagnosticActivity;

    const v6, 0x7f070252

    invoke-virtual {v5, v6}, Lcom/xueqiu/android/common/setting/DiagnosticActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    sget-object v5, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    aput-object v5, v1, v9

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v5, v1, v10

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1109
    const-string v5, "%s: %s"

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/xueqiu/android/common/setting/DiagnosticActivity$4;->b:Lcom/xueqiu/android/common/setting/DiagnosticActivity;

    const v1, 0x7f070077

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/setting/DiagnosticActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    .line 2078
    iget-object v0, v4, Lcom/xueqiu/android/base/c/a;->a:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2079
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 2080
    sget-object v7, Lcom/xueqiu/android/base/c/a;->b:[Ljava/lang/String;

    array-length v7, v7

    if-ge v1, v7, :cond_0

    if-gez v1, :cond_1

    :cond_0
    move v1, v2

    .line 2084
    :cond_1
    const-string v7, "%s %s"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v2

    sget-object v0, Lcom/xueqiu/android/base/c/a;->b:[Ljava/lang/String;

    aget-object v0, v0, v1

    aput-object v0, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1109
    aput-object v0, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1110
    const-string v0, ""

    invoke-virtual {p1, v0}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1112
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/DiagnosticActivity$4;->b:Lcom/xueqiu/android/common/setting/DiagnosticActivity;

    const v1, 0x7f070210

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/setting/DiagnosticActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1113
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/xueqiu/android/common/setting/DiagnosticActivity$4;->b:Lcom/xueqiu/android/common/setting/DiagnosticActivity;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/setting/DiagnosticActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v5, "com.xueqiu.android.h5"

    invoke-direct {v0, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1114
    const-string v1, "%s%s%s"

    new-array v5, v11, [Ljava/lang/Object;

    const-string v6, "modules"

    aput-object v6, v5, v2

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v6, v5, v9

    const-string v6, "config.json"

    aput-object v6, v5, v10

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1115
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/xueqiu/android/base/util/k;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 1116
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    .line 1117
    const-class v5, Lcom/google/gson/JsonElement;

    invoke-virtual {v1, v0, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    .line 1118
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1119
    const-string v0, ""

    invoke-virtual {p1, v0}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1121
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/DiagnosticActivity$4;->b:Lcom/xueqiu/android/common/setting/DiagnosticActivity;

    const v1, 0x7f070213

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/setting/DiagnosticActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1122
    const-string v1, "%s: %s"

    new-array v5, v10, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/xueqiu/android/common/setting/DiagnosticActivity$4;->b:Lcom/xueqiu/android/common/setting/DiagnosticActivity;

    const v6, 0x7f070212

    invoke-virtual {v0, v6}, Lcom/xueqiu/android/common/setting/DiagnosticActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .line 2113
    iget-object v0, v4, Lcom/xueqiu/android/base/c/a;->a:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 2114
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    invoke-static {v0}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 1122
    aput-object v0, v5, v9

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1123
    const-string v0, "%s: %s"

    new-array v1, v10, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xueqiu/android/common/setting/DiagnosticActivity$4;->b:Lcom/xueqiu/android/common/setting/DiagnosticActivity;

    const v5, 0x7f07020f

    invoke-virtual {v4, v5}, Lcom/xueqiu/android/common/setting/DiagnosticActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {}, Lcom/xueqiu/android/base/c/a;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1124
    const-string v0, "%s: %s"

    new-array v1, v10, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xueqiu/android/common/setting/DiagnosticActivity$4;->b:Lcom/xueqiu/android/common/setting/DiagnosticActivity;

    const v5, 0x7f0702a2

    invoke-virtual {v4, v5}, Lcom/xueqiu/android/common/setting/DiagnosticActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {}, Lcom/xueqiu/android/base/c/a;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1125
    const-string v0, ""

    invoke-virtual {p1, v0}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1127
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/DiagnosticActivity$4;->b:Lcom/xueqiu/android/common/setting/DiagnosticActivity;

    const v1, 0x7f0701d5

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/setting/DiagnosticActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1129
    const-string v0, "%s: ["

    new-array v1, v9, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xueqiu/android/common/setting/DiagnosticActivity$4;->b:Lcom/xueqiu/android/common/setting/DiagnosticActivity;

    const v5, 0x7f0701ba

    invoke-virtual {v4, v5}, Lcom/xueqiu/android/common/setting/DiagnosticActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1130
    invoke-static {}, Lcom/xueqiu/android/base/c/b;->a()Lcom/xueqiu/android/base/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/c/b;->b()[Ljava/lang/String;

    move-result-object v1

    move v0, v2

    .line 1131
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_3

    .line 1132
    aget-object v4, v1, v0

    .line 1133
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1134
    array-length v5, v4

    if-ne v5, v10, :cond_2

    .line 1135
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "    "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v6, v4, v2

    aget-object v4, v4, v9

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v6, v4}, Lcom/xueqiu/android/base/c/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1131
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1138
    :cond_3
    const-string v0, "]"

    invoke-virtual {p1, v0}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1140
    const-string v0, "%s: ["

    new-array v1, v9, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xueqiu/android/common/setting/DiagnosticActivity$4;->b:Lcom/xueqiu/android/common/setting/DiagnosticActivity;

    const v5, 0x7f070034

    invoke-virtual {v4, v5}, Lcom/xueqiu/android/common/setting/DiagnosticActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1141
    invoke-static {}, Lcom/xueqiu/android/base/c/b;->a()Lcom/xueqiu/android/base/c/b;

    move-result-object v0

    const-string v1, "api.xueqiu.com"

    .line 2212
    iget-object v4, v0, Lcom/xueqiu/android/base/c/b;->b:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2213
    iget-object v0, v0, Lcom/xueqiu/android/base/c/b;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/base/c/d;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/c/d;->a()[Ljava/lang/String;

    move-result-object v0

    .line 1142
    :goto_1
    invoke-static {}, Lcom/xueqiu/android/base/c/b;->a()Lcom/xueqiu/android/base/c/b;

    move-result-object v1

    const-string v4, "api.xueqiu.com"

    invoke-virtual {v1, v4}, Lcom/xueqiu/android/base/c/b;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1143
    invoke-static {}, Lcom/xueqiu/android/base/c/b;->a()Lcom/xueqiu/android/base/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/c/b;->c()Ljava/lang/String;

    move-result-object v1

    const-string v4, "https"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v3

    :goto_2
    move v4, v2

    .line 1144
    :goto_3
    array-length v6, v0

    if-ge v4, v6, :cond_6

    .line 1145
    aget-object v6, v0, v4

    .line 1146
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "    "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v1}, Lcom/xueqiu/android/base/c/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1144
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2215
    :cond_4
    sget-object v0, Lcom/xueqiu/android/base/c/b;->a:[Ljava/lang/String;

    goto :goto_1

    .line 1143
    :cond_5
    const/16 v1, 0x50

    goto :goto_2

    .line 1148
    :cond_6
    const-string v0, "]"

    invoke-virtual {p1, v0}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1149
    const-string v0, "%s: ["

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/xueqiu/android/common/setting/DiagnosticActivity$4;->b:Lcom/xueqiu/android/common/setting/DiagnosticActivity;

    const v7, 0x7f070156

    invoke-virtual {v6, v7}, Lcom/xueqiu/android/common/setting/DiagnosticActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/i;->a(Ljava/lang/Object;)V

    move v0, v2

    .line 1150
    :goto_4
    array-length v4, v5

    if-ge v0, v4, :cond_7

    .line 1151
    aget-object v4, v5, v0

    .line 1152
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "    "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v1}, Lcom/xueqiu/android/base/c/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1150
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1154
    :cond_7
    const-string v0, "]"

    invoke-virtual {p1, v0}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1155
    const-string v0, ""

    invoke-virtual {p1, v0}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1157
    invoke-static {}, Lcom/xueqiu/android/base/c/b;->a()Lcom/xueqiu/android/base/c/b;

    move-result-object v0

    const-string v4, "tc.xueqiu.com"

    invoke-virtual {v0, v4}, Lcom/xueqiu/android/base/c/b;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1158
    const-string v0, "%s: ["

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/xueqiu/android/common/setting/DiagnosticActivity$4;->b:Lcom/xueqiu/android/common/setting/DiagnosticActivity;

    const v7, 0x7f070158

    invoke-virtual {v6, v7}, Lcom/xueqiu/android/common/setting/DiagnosticActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/i;->a(Ljava/lang/Object;)V

    move v0, v2

    .line 1159
    :goto_5
    array-length v5, v4

    if-ge v0, v5, :cond_8

    .line 1160
    aget-object v5, v4, v0

    .line 1161
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "    "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v1}, Lcom/xueqiu/android/base/c/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1159
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1163
    :cond_8
    const-string v0, "]"

    invoke-virtual {p1, v0}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1164
    const-string v0, ""

    invoke-virtual {p1, v0}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1166
    invoke-static {}, Lcom/xueqiu/android/base/c/b;->a()Lcom/xueqiu/android/base/c/b;

    move-result-object v0

    const-string v4, "stock.xueqiu.com"

    invoke-virtual {v0, v4}, Lcom/xueqiu/android/base/c/b;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1167
    const-string v0, "%s: ["

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/xueqiu/android/common/setting/DiagnosticActivity$4;->b:Lcom/xueqiu/android/common/setting/DiagnosticActivity;

    const v7, 0x7f070157

    invoke-virtual {v6, v7}, Lcom/xueqiu/android/common/setting/DiagnosticActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/i;->a(Ljava/lang/Object;)V

    move v0, v2

    .line 1168
    :goto_6
    array-length v5, v4

    if-ge v0, v5, :cond_9

    .line 1169
    aget-object v5, v4, v0

    .line 1170
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "    "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v1}, Lcom/xueqiu/android/base/c/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1168
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1172
    :cond_9
    const-string v0, "]"

    invoke-virtual {p1, v0}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1173
    const-string v0, ""

    invoke-virtual {p1, v0}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1175
    const-string v0, "%s: ["

    new-array v1, v9, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xueqiu/android/common/setting/DiagnosticActivity$4;->b:Lcom/xueqiu/android/common/setting/DiagnosticActivity;

    const v5, 0x7f07004e

    invoke-virtual {v4, v5}, Lcom/xueqiu/android/common/setting/DiagnosticActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1176
    new-array v0, v11, [Ljava/lang/String;

    const-string v1, "xueqiu.yun.pingan.com"

    aput-object v1, v0, v2

    const-string v1, "xueqiu.gjzq.com.cn"

    aput-object v1, v0, v9

    const-string v1, "www.glsc.com.cn"

    aput-object v1, v0, v10

    .line 1178
    :goto_7
    if-ge v2, v11, :cond_a

    .line 1179
    aget-object v1, v0, v2

    .line 1180
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "    "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3}, Lcom/xueqiu/android/base/c/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1178
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1183
    :cond_a
    const-string v0, "Trace api.xueqiu.com"

    invoke-virtual {p1, v0}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1184
    const-string v0, "api.xueqiu.com"

    invoke-static {v0}, Lcom/xueqiu/android/base/c/e;->a(Ljava/lang/String;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/common/setting/DiagnosticActivity$4$1;

    invoke-direct {v1, p0, p1}, Lcom/xueqiu/android/common/setting/DiagnosticActivity$4$1;-><init>(Lcom/xueqiu/android/common/setting/DiagnosticActivity$4;Lrx/i;)V

    new-instance v2, Lcom/xueqiu/android/common/setting/DiagnosticActivity$4$2;

    invoke-direct {v2, p0, p1}, Lcom/xueqiu/android/common/setting/DiagnosticActivity$4$2;-><init>(Lcom/xueqiu/android/common/setting/DiagnosticActivity$4;Lrx/i;)V

    new-instance v3, Lcom/xueqiu/android/common/setting/DiagnosticActivity$4$3;

    invoke-direct {v3, p0, p1}, Lcom/xueqiu/android/common/setting/DiagnosticActivity$4$3;-><init>(Lcom/xueqiu/android/common/setting/DiagnosticActivity$4;Lrx/i;)V

    invoke-virtual {v0, v1, v2, v3}, Lrx/a;->a(Lrx/c/b;Lrx/c/b;Lrx/c/a;)Lrx/j;

    .line 97
    return-void
.end method
