.class public final Lcom/xueqiu/android/base/s;
.super Ljava/lang/Object;
.source "SNBUpdateManager.java"


# static fields
.field static volatile c:Z

.field private static d:Lcom/xueqiu/android/base/s;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field private e:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/xueqiu/android/base/s;->d:Lcom/xueqiu/android/base/s;

    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xueqiu/android/base/s;->c:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/xueqiu/android/base/s;->e:Landroid/content/BroadcastReceiver;

    .line 47
    iput-object v0, p0, Lcom/xueqiu/android/base/s;->a:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/xueqiu/android/base/s;->b:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public static a()Lcom/xueqiu/android/base/s;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/xueqiu/android/base/s;->d:Lcom/xueqiu/android/base/s;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/xueqiu/android/base/s;->c:Z

    if-nez v0, :cond_1

    .line 71
    :cond_0
    sget-object v0, Lcom/xueqiu/android/base/s;->d:Lcom/xueqiu/android/base/s;

    if-nez v0, :cond_1

    .line 72
    new-instance v0, Lcom/xueqiu/android/base/s;

    invoke-direct {v0}, Lcom/xueqiu/android/base/s;-><init>()V

    .line 75
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/xueqiu/android/base/s;->d:Lcom/xueqiu/android/base/s;

    goto :goto_0
.end method

.method protected static final a(Landroid/content/Context;Lcom/xueqiu/android/base/h5/e;)Lcom/xueqiu/android/base/s;
    .locals 7

    .prologue
    const/16 v6, 0x65

    const/4 v5, 0x1

    .line 57
    sget-object v0, Lcom/xueqiu/android/base/s;->d:Lcom/xueqiu/android/base/s;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/xueqiu/android/base/s;->c:Z

    if-nez v0, :cond_2

    .line 58
    :cond_0
    new-instance v0, Lcom/xueqiu/android/base/s;

    invoke-direct {v0}, Lcom/xueqiu/android/base/s;-><init>()V

    .line 59
    sput-object v0, Lcom/xueqiu/android/base/s;->d:Lcom/xueqiu/android/base/s;

    .line 1079
    sget-boolean v0, Lcom/xueqiu/android/base/s;->c:Z

    if-nez v0, :cond_2

    .line 1087
    invoke-static {p0}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getVersionCode(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v6, :cond_1

    .line 1088
    const-string v0, "SBUpdateManager"

    const-string v1, "updating %d to %d."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getVersionCode(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    invoke-virtual {p1, v5}, Lcom/xueqiu/android/base/h5/e;->a(Z)V

    .line 1090
    invoke-static {p0}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->updateVersionCode(Landroid/content/Context;)V

    .line 1083
    :cond_1
    sput-boolean v5, Lcom/xueqiu/android/base/s;->c:Z

    .line 61
    :cond_2
    sget-object v0, Lcom/xueqiu/android/base/s;->d:Lcom/xueqiu/android/base/s;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/base/s;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/xueqiu/android/base/s;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/base/s;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/xueqiu/android/base/s;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 35
    .line 1151
    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1153
    array-length v1, v0

    if-ne v1, v7, :cond_1

    aget-object v1, v0, v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v7, :cond_1

    .line 1154
    aget-object v0, v0, v5

    .line 1156
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1158
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_0

    .line 1159
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1160
    const-string v2, "%s.%s"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v1, v3, v6

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1165
    :goto_0
    return-object v0

    .line 1163
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1164
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1165
    const-string v3, "%s.%s.%s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    aput-object v2, v4, v5

    aput-object v0, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1168
    :cond_1
    const/4 v0, 0x0

    .line 35
    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/base/s;Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 1212
    new-instance v0, Ljava/io/File;

    const-string v1, "%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/xueqiu/android/base/s;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1214
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1215
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1216
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1217
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1218
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 35
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/base/s;)Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/base/s;->e:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/base/s;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/xueqiu/android/base/s;->b:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 172
    sget-boolean v0, Lcom/xueqiu/android/base/s;->c:Z

    if-nez v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 175
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/common/UpdateDialogActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    const-string v1, "extra_download_url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const-string v1, "extra_update_content"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string v1, "extra_is_gray_update"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 179
    iget-object v1, p0, Lcom/xueqiu/android/base/s;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 180
    const-string v1, "extra_version"

    iget-object v2, p0, Lcom/xueqiu/android/base/s;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    :cond_1
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 183
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 187
    sget-boolean v0, Lcom/xueqiu/android/base/s;->c:Z

    if-nez v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/base/s;->e:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 191
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/base/s;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;)V

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/base/s;->e:Landroid/content/BroadcastReceiver;

    .line 195
    :cond_1
    new-instance v0, Lcom/xueqiu/android/base/s$2;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/base/s$2;-><init>(Lcom/xueqiu/android/base/s;)V

    iput-object v0, p0, Lcom/xueqiu/android/base/s;->e:Landroid/content/BroadcastReceiver;

    .line 206
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 207
    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/base/s;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method
