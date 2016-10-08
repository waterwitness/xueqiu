.class public final Lcom/xueqiu/android/base/h5/c;
.super Lcom/xueqiu/android/common/c;
.source "H5Fragment.java"


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private ak:Z

.field private al:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/xueqiu/android/base/h5/b;",
            ">;"
        }
    .end annotation
.end field

.field private am:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private an:Ljava/lang/String;

.field private ao:Landroid/widget/ProgressBar;

.field private ap:Lcom/xueqiu/android/base/h5/l;

.field private aq:Landroid/widget/FrameLayout;

.field private ar:Lcom/xueqiu/android/base/h5/o;

.field private as:Lrx/j;

.field private at:I

.field private au:Landroid/webkit/WebChromeClient;

.field private av:Landroid/webkit/DownloadListener;

.field b:Ljava/lang/String;

.field c:Lcom/xueqiu/android/base/h5/d;

.field d:Lcom/xueqiu/android/base/h5/b;

.field e:Lcom/xueqiu/android/common/widget/SNBWebView;

.field f:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

.field g:Landroid/content/BroadcastReceiver;

.field h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/snowball/h5/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xueqiu/android/base/h5/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 178
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    .line 155
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/base/h5/c;->al:Landroid/util/SparseArray;

    .line 171
    iput-object v1, p0, Lcom/xueqiu/android/base/h5/c;->g:Landroid/content/BroadcastReceiver;

    .line 173
    iput-object v1, p0, Lcom/xueqiu/android/base/h5/c;->ar:Lcom/xueqiu/android/base/h5/o;

    .line 176
    const/16 v0, 0x44c

    iput v0, p0, Lcom/xueqiu/android/base/h5/c;->h:I

    .line 957
    iput-object v1, p0, Lcom/xueqiu/android/base/h5/c;->as:Lrx/j;

    .line 1161
    new-instance v0, Lcom/xueqiu/android/base/h5/c$4;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/base/h5/c$4;-><init>(Lcom/xueqiu/android/base/h5/c;)V

    iput-object v0, p0, Lcom/xueqiu/android/base/h5/c;->au:Landroid/webkit/WebChromeClient;

    .line 1232
    new-instance v0, Lcom/xueqiu/android/base/h5/c$5;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/base/h5/c$5;-><init>(Lcom/xueqiu/android/base/h5/c;)V

    iput-object v0, p0, Lcom/xueqiu/android/base/h5/c;->av:Landroid/webkit/DownloadListener;

    .line 179
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/base/h5/c;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/xueqiu/android/base/h5/c;->am:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method public static a(Ljava/lang/String;Lcom/xueqiu/android/base/h5/b;Z)Lcom/xueqiu/android/base/h5/c;
    .locals 2

    .prologue
    .line 182
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 183
    const-string v1, "arg_url"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v1, "arg_is_module"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 185
    if-eqz p1, :cond_0

    .line 186
    const-string v1, "arg_event"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 188
    :cond_0
    new-instance v1, Lcom/xueqiu/android/base/h5/c;

    invoke-direct {v1}, Lcom/xueqiu/android/base/h5/c;-><init>()V

    .line 189
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h5/c;->e(Landroid/os/Bundle;)V

    .line 190
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h5/c;->e_(Z)V

    .line 191
    return-object v1
.end method

.method static synthetic a(Lcom/xueqiu/android/base/h5/c;)Lcom/xueqiu/android/common/widget/SNBWebView;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->e:Lcom/xueqiu/android/common/widget/SNBWebView;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/base/h5/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/xueqiu/android/base/h5/c;->an:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/base/h5/c;JJ)Lrx/a;
    .locals 7

    .prologue
    .line 123
    .line 28016
    new-instance v0, Lcom/xueqiu/android/base/h5/c$3;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/xueqiu/android/base/h5/c$3;-><init>(Lcom/xueqiu/android/base/h5/c;JJ)V

    invoke-static {v0}, Lrx/a;->a(Lrx/b;)Lrx/a;

    move-result-object v0

    .line 123
    return-object v0
.end method

.method private declared-synchronized a(Lcom/xueqiu/android/base/h5/b;I)V
    .locals 6

    .prologue
    .line 412
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->al:Landroid/util/SparseArray;

    .line 11046
    iget v1, p1, Lcom/xueqiu/android/base/h5/b;->a:I

    .line 412
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/base/h5/b;

    .line 413
    if-eqz v0, :cond_1

    .line 414
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/c;->al:Landroid/util/SparseArray;

    .line 12046
    iget v2, p1, Lcom/xueqiu/android/base/h5/b;->a:I

    .line 414
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 12062
    iget-object v2, p1, Lcom/xueqiu/android/base/h5/b;->b:Ljava/lang/String;

    .line 416
    const-string v1, ""

    .line 417
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v3

    .line 13062
    iget-object v0, v0, Lcom/xueqiu/android/base/h5/b;->b:Ljava/lang/String;

    .line 417
    const-class v4, Lcom/google/gson/JsonObject;

    invoke-virtual {v3, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 13070
    iget v3, p1, Lcom/xueqiu/android/base/h5/b;->c:I

    .line 418
    if-ltz v3, :cond_2

    .line 419
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 420
    iget-object v3, p0, Lcom/xueqiu/android/base/h5/c;->d:Lcom/xueqiu/android/base/h5/b;

    if-eqz v3, :cond_0

    .line 421
    iget-object v3, p0, Lcom/xueqiu/android/base/h5/c;->d:Lcom/xueqiu/android/base/h5/b;

    .line 14062
    iget-object v4, p1, Lcom/xueqiu/android/base/h5/b;->b:Ljava/lang/String;

    .line 14066
    iput-object v4, v3, Lcom/xueqiu/android/base/h5/b;->b:Ljava/lang/String;

    .line 422
    iget-object v3, p0, Lcom/xueqiu/android/base/h5/c;->d:Lcom/xueqiu/android/base/h5/b;

    .line 14070
    iget v4, p1, Lcom/xueqiu/android/base/h5/b;->c:I

    .line 422
    add-int/lit8 v4, v4, -0x1

    .line 14074
    iput v4, v3, Lcom/xueqiu/android/base/h5/b;->c:I

    .line 423
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 424
    const-string v4, "extra_event"

    iget-object v5, p0, Lcom/xueqiu/android/base/h5/c;->d:Lcom/xueqiu/android/base/h5/b;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 425
    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 427
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/base/h5/c;->g()Landroid/support/v4/a/k;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v0}, Landroid/support/v4/a/k;->setResult(ILandroid/content/Intent;)V

    .line 428
    invoke-virtual {p0}, Lcom/xueqiu/android/base/h5/c;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->finish()V

    move-object v0, v1

    .line 442
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 443
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/c;->e:Lcom/xueqiu/android/common/widget/SNBWebView;

    invoke-static {v1, v0, v2}, Lcom/xueqiu/android/base/h5/l;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    :cond_1
    monitor-exit p0

    return-void

    .line 429
    :cond_2
    if-nez p2, :cond_3

    .line 430
    if-eqz v0, :cond_5

    :try_start_1
    const-string v3, "success"

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 431
    const-string v1, "success"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 433
    :cond_3
    const/4 v3, 0x1

    if-ne p2, v3, :cond_4

    .line 434
    if-eqz v0, :cond_5

    const-string v3, "cancel"

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 435
    const-string v1, "cancel"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 438
    :cond_4
    if-eqz v0, :cond_5

    const-string v3, "error"

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 439
    const-string v1, "error"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method private a(Lcom/xueqiu/android/base/h5/b;JJ)V
    .locals 8

    .prologue
    .line 969
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->as:Lrx/j;

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->as:Lrx/j;

    invoke-interface {v0}, Lrx/j;->b()V

    .line 971
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/base/h5/c;->as:Lrx/j;

    .line 974
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/base/h5/c;->at:I

    .line 975
    sget-object v0, Lcom/xueqiu/android/base/util/ag;->c:Lrx/h;

    new-instance v1, Lcom/xueqiu/android/base/h5/c$2;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/xueqiu/android/base/h5/c$2;-><init>(Lcom/xueqiu/android/base/h5/c;Lcom/xueqiu/android/base/h5/b;JJ)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Lrx/h;->a(Lrx/c/a;JJLjava/util/concurrent/TimeUnit;)Lrx/j;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/base/h5/c;->as:Lrx/j;

    .line 1013
    return-void
.end method

.method private a(Lcom/xueqiu/android/base/h5/b;Z)V
    .locals 2

    .prologue
    .line 1037
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xueqiu.android.action.paySuccess"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1038
    const-string v1, "extra_pay_state"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1039
    invoke-virtual {p0}, Lcom/xueqiu/android/base/h5/c;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 1041
    if-eqz p2, :cond_0

    .line 1042
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xueqiu/android/base/h5/c;->a(Lcom/xueqiu/android/base/h5/b;I)V

    .line 1046
    :goto_0
    return-void

    .line 1044
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/xueqiu/android/base/h5/c;->a(Lcom/xueqiu/android/base/h5/b;I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/base/h5/c;Lcom/xueqiu/android/base/h5/b;I)V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Lcom/xueqiu/android/base/h5/c;->a(Lcom/xueqiu/android/base/h5/b;I)V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/base/h5/c;Lcom/xueqiu/android/base/h5/b;JJ)V
    .locals 0

    .prologue
    .line 123
    invoke-direct/range {p0 .. p5}, Lcom/xueqiu/android/base/h5/c;->a(Lcom/xueqiu/android/base/h5/b;JJ)V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/base/h5/c;Lcom/xueqiu/android/base/h5/b;Ljava/lang/String;JJ)V
    .locals 7

    .prologue
    .line 123
    .line 27889
    new-instance v0, Lcom/xueqiu/android/community/model/PayResult;

    invoke-direct {v0, p2}, Lcom/xueqiu/android/community/model/PayResult;-><init>(Ljava/lang/String;)V

    .line 27890
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PayResult;->getResultStatus()Ljava/lang/String;

    move-result-object v0

    .line 27892
    const-string v1, "9000"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    .line 27893
    invoke-direct/range {v0 .. v5}, Lcom/xueqiu/android/base/h5/c;->a(Lcom/xueqiu/android/base/h5/b;JJ)V

    .line 27899
    :goto_0
    return-void

    .line 27898
    :cond_0
    const-string v1, "8000"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    .line 27899
    invoke-direct/range {v0 .. v5}, Lcom/xueqiu/android/base/h5/c;->a(Lcom/xueqiu/android/base/h5/b;JJ)V

    goto :goto_0

    .line 27904
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xueqiu/android/base/h5/c;->a(Lcom/xueqiu/android/base/h5/b;Z)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/base/h5/c;Lcom/xueqiu/android/base/h5/b;Z)V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Lcom/xueqiu/android/base/h5/c;->a(Lcom/xueqiu/android/base/h5/b;Z)V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/base/h5/c;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/base/h5/c;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/base/h5/c;Lcom/google/gson/JsonObject;Ljava/io/File;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 23539
    const-string v2, "cameraType"

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 23540
    const-string v2, "cameraType"

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 23541
    new-instance v3, Lcom/xueqiu/android/common/camera/g;

    invoke-direct {v3}, Lcom/xueqiu/android/common/camera/g;-><init>()V

    .line 24197
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 23542
    if-nez v4, :cond_1

    .line 25082
    iput-object v2, v3, Lcom/xueqiu/android/common/camera/g;->d:Ljava/lang/String;

    .line 25083
    const-string v4, "back"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "idCard"

    .line 25084
    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 25085
    :cond_0
    iput v1, v3, Lcom/xueqiu/android/common/camera/g;->c:I

    .line 23546
    :cond_1
    :goto_0
    const-string v1, "tips"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 23547
    const-string v1, "tips"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 23548
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 26078
    iput-object v1, v3, Lcom/xueqiu/android/common/camera/g;->e:Ljava/lang/String;

    .line 23553
    :cond_2
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 27034
    iput-object v1, v3, Lcom/xueqiu/android/common/camera/g;->a:Ljava/lang/String;

    .line 23554
    invoke-virtual {p0}, Lcom/xueqiu/android/base/h5/c;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/xueqiu/android/common/camera/a;->a(Landroid/content/Context;Lcom/xueqiu/android/common/camera/g;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x2715

    invoke-virtual {p0, v1, v2}, Lcom/xueqiu/android/base/h5/c;->a(Landroid/content/Intent;I)V

    .line 23555
    :goto_1
    return v0

    .line 25087
    :cond_3
    iput v0, v3, Lcom/xueqiu/android/common/camera/g;->c:I

    goto :goto_0

    :cond_4
    move v0, v1

    .line 123
    goto :goto_1
.end method

.method static synthetic b(Lcom/xueqiu/android/base/h5/c;)Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/base/h5/c;->g:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1297
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-ge v1, v2, :cond_1

    .line 1307
    :cond_0
    :goto_0
    return v0

    .line 1300
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1301
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1302
    const-string v2, "com.android.providers.downloads.ui"

    const-string v3, "com.android.providers.downloads.ui.DownloadList"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1303
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1305
    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 1307
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/xueqiu/android/base/h5/c;)I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/xueqiu/android/base/h5/c;->at:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/base/h5/c;->at:I

    return v0
.end method

.method static synthetic d(Lcom/xueqiu/android/base/h5/c;)Lrx/j;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->as:Lrx/j;

    return-object v0
.end method

.method static synthetic e(Lcom/xueqiu/android/base/h5/c;)Lrx/j;
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/base/h5/c;->as:Lrx/j;

    return-object v0
.end method

.method static synthetic f(Lcom/xueqiu/android/base/h5/c;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->ao:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic g(Lcom/xueqiu/android/base/h5/c;)Landroid/webkit/ValueCallback;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->am:Landroid/webkit/ValueCallback;

    return-object v0
.end method

.method static synthetic h(Lcom/xueqiu/android/base/h5/c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->an:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic u()Ljava/io/File;
    .locals 3

    .prologue
    .line 28261
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 28262
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JPEG_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28263
    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 28264
    const-string v2, ".jpg"

    invoke-static {v0, v2, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 123
    return-object v0
.end method


# virtual methods
.method public final K_()V
    .locals 3

    .prologue
    .line 274
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->ap:Lcom/xueqiu/android/base/h5/l;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->ap:Lcom/xueqiu/android/base/h5/l;

    .line 6828
    iget-object v0, v0, Lcom/xueqiu/android/base/h5/l;->b:Lcom/xueqiu/android/common/widget/SNBWebView;

    const-string v1, "window.viewDidAppear"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/h5/l;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :cond_0
    invoke-super {p0}, Lcom/xueqiu/android/common/c;->K_()V

    .line 278
    return-void
.end method

.method final a(Lcom/google/gson/JsonObject;)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 798
    .line 799
    const-string v0, "rect"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 800
    const-string v0, "rect"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 801
    const-string v2, "x"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    .line 802
    const-string v3, "y"

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v3

    .line 803
    const-string v4, "w"

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v4

    .line 804
    const-string v5, "h"

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    .line 805
    iget-object v5, p0, Lcom/xueqiu/android/base/h5/c;->e:Lcom/xueqiu/android/common/widget/SNBWebView;

    int-to-float v2, v2

    invoke-static {v2}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v2

    float-to-int v2, v2

    int-to-float v3, v3

    invoke-static {v3}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v3

    float-to-int v3, v3

    int-to-float v4, v4

    invoke-static {v4}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v4

    float-to-int v4, v4

    int-to-float v0, v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v5, v2, v3, v4, v0}, Lcom/xueqiu/android/base/util/ad;->a(Landroid/view/View;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 808
    :goto_0
    const-string v2, "insertImageBase64"

    invoke-static {p1, v2}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "insertImageBase64"

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 809
    const-string v2, "insertImageBase64"

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 810
    array-length v3, v2

    invoke-static {v2, v6, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 811
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-eq v2, v4, :cond_2

    .line 812
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    div-float/2addr v2, v4

    .line 813
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v4, v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v2, v5

    float-to-int v2, v2

    const/4 v5, 0x1

    invoke-static {v3, v4, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 814
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 817
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 818
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 819
    const-string v5, "insertPosition"

    invoke-static {p1, v5}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "insertPosition"

    invoke-virtual {p1, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    const-string v6, "top"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 820
    invoke-virtual {v4, v2, v7, v7, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 821
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v0, v7, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 826
    :goto_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 827
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v3

    .line 830
    :cond_0
    return-object v0

    .line 823
    :cond_1
    invoke-virtual {v4, v0, v7, v7, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 824
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v2, v7, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_2
    move-object v2, v3

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 216
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/c;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 217
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->aq:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 218
    const v0, 0x7f03013d

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/xueqiu/android/base/h5/c;->aq:Landroid/widget/FrameLayout;

    .line 221
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->aq:Landroid/widget/FrameLayout;

    const v1, 0x7f0e016b

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/xueqiu/android/base/h5/c;->ao:Landroid/widget/ProgressBar;

    .line 222
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->ao:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 224
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->aq:Landroid/widget/FrameLayout;

    const v1, 0x7f0e018c

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SNBWebView;

    iput-object v0, p0, Lcom/xueqiu/android/base/h5/c;->e:Lcom/xueqiu/android/common/widget/SNBWebView;

    .line 225
    new-instance v0, Lcom/xueqiu/android/base/h5/o;

    iget-object v1, p0, Lcom/xueqiu/android/base/h5/c;->e:Lcom/xueqiu/android/common/widget/SNBWebView;

    iget-object v2, p0, Lcom/xueqiu/android/base/h5/c;->aq:Landroid/widget/FrameLayout;

    const v3, 0x7f0e0387

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/base/h5/o;-><init>(Landroid/webkit/WebView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/xueqiu/android/base/h5/c;->ar:Lcom/xueqiu/android/base/h5/o;

    .line 226
    new-instance v0, Lcom/xueqiu/android/base/h5/l;

    iget-object v1, p0, Lcom/xueqiu/android/base/h5/c;->e:Lcom/xueqiu/android/common/widget/SNBWebView;

    invoke-direct {v0, p0, v1}, Lcom/xueqiu/android/base/h5/l;-><init>(Lcom/xueqiu/android/base/h5/c;Lcom/xueqiu/android/common/widget/SNBWebView;)V

    iput-object v0, p0, Lcom/xueqiu/android/base/h5/c;->ap:Lcom/xueqiu/android/base/h5/l;

    .line 228
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->e:Lcom/xueqiu/android/common/widget/SNBWebView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 229
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->e:Lcom/xueqiu/android/common/widget/SNBWebView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 230
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->e:Lcom/xueqiu/android/common/widget/SNBWebView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 231
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->e:Lcom/xueqiu/android/common/widget/SNBWebView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 232
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->e:Lcom/xueqiu/android/common/widget/SNBWebView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 233
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->e:Lcom/xueqiu/android/common/widget/SNBWebView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 234
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->e:Lcom/xueqiu/android/common/widget/SNBWebView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 235
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->e:Lcom/xueqiu/android/common/widget/SNBWebView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 236
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 237
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->e:Lcom/xueqiu/android/common/widget/SNBWebView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->e:Lcom/xueqiu/android/common/widget/SNBWebView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "Xueqiu Android %s"

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "8.5"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->e:Lcom/xueqiu/android/common/widget/SNBWebView;

    iget-object v1, p0, Lcom/xueqiu/android/base/h5/c;->au:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 241
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->e:Lcom/xueqiu/android/common/widget/SNBWebView;

    iget-object v1, p0, Lcom/xueqiu/android/base/h5/c;->av:Landroid/webkit/DownloadListener;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 242
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->e:Lcom/xueqiu/android/common/widget/SNBWebView;

    const v1, 0x7f01016d

    invoke-virtual {p0}, Lcom/xueqiu/android/base/h5/c;->g()Landroid/support/v4/a/k;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/r;->a(ILandroid/app/Activity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBWebView;->setBackgroundColor(I)V

    .line 244
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->aq:Landroid/widget/FrameLayout;

    const v1, 0x7f0e0172

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    iput-object v0, p0, Lcom/xueqiu/android/base/h5/c;->f:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    .line 246
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->e:Lcom/xueqiu/android/common/widget/SNBWebView;

    new-instance v1, Lcom/xueqiu/android/base/h5/n;

    iget-object v2, p0, Lcom/xueqiu/android/base/h5/c;->ap:Lcom/xueqiu/android/base/h5/l;

    iget-object v3, p0, Lcom/xueqiu/android/base/h5/c;->ar:Lcom/xueqiu/android/base/h5/o;

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/base/h5/n;-><init>(Lcom/xueqiu/android/base/h5/l;Lcom/xueqiu/android/base/h5/o;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 247
    iget-boolean v0, p0, Lcom/xueqiu/android/base/h5/c;->ak:Z

    if-eqz v0, :cond_2

    .line 6084
    invoke-static {}, Lcom/xueqiu/android/base/h5/f;->a()Lcom/xueqiu/android/base/h5/e;

    move-result-object v0

    .line 6134
    iget-object v0, v0, Lcom/xueqiu/android/base/h5/e;->b:Lcom/xueqiu/android/base/h5/k;

    .line 248
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h5/k;->find(Ljava/lang/String;)Lcom/xueqiu/android/base/h5/g;

    move-result-object v0

    .line 249
    if-eqz v0, :cond_1

    .line 250
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/c;->e:Lcom/xueqiu/android/common/widget/SNBWebView;

    iget-object v2, p0, Lcom/xueqiu/android/base/h5/c;->ar:Lcom/xueqiu/android/base/h5/o;

    iget-object v3, p0, Lcom/xueqiu/android/base/h5/c;->ap:Lcom/xueqiu/android/base/h5/l;

    iget-object v4, p0, Lcom/xueqiu/android/base/h5/c;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/xueqiu/android/base/h5/g;->display(Lcom/xueqiu/android/common/widget/SNBWebView;Lcom/xueqiu/android/base/h5/o;Lcom/xueqiu/android/base/h5/l;Ljava/lang/String;)V

    .line 256
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->aq:Landroid/widget/FrameLayout;

    return-object v0

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->e:Lcom/xueqiu/android/common/widget/SNBWebView;

    iget-object v1, p0, Lcom/xueqiu/android/base/h5/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 12

    .prologue
    const/16 v11, 0x2712

    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 316
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/c;->a(IILandroid/content/Intent;)V

    .line 317
    if-ne p2, v9, :cond_6

    const/16 v0, 0x2711

    if-eq p1, v0, :cond_0

    if-eq p1, v11, :cond_0

    const/16 v0, 0x2715

    if-ne p1, v0, :cond_6

    .line 7562
    :cond_0
    const/16 v0, 0x2711

    if-ne p1, v0, :cond_4

    if-eqz p3, :cond_4

    .line 7563
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 7564
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "file://"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7565
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 7578
    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7579
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 7580
    new-instance v3, Lcom/xueqiu/android/base/h5/b;

    invoke-direct {v3}, Lcom/xueqiu/android/base/h5/b;-><init>()V

    .line 8050
    const/16 v4, 0x2713

    iput v4, v3, Lcom/xueqiu/android/base/h5/b;->a:I

    .line 7583
    :try_start_0
    iget v4, p0, Lcom/xueqiu/android/base/h5/c;->h:I

    invoke-static {v0, v4}, Lcom/xueqiu/android/base/util/ad;->a(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 7584
    invoke-static {v4}, Lcom/xueqiu/android/base/util/ad;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v4

    .line 7585
    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v4

    .line 7587
    new-instance v5, Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v6, v4, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7588
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7590
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8066
    iput-object v1, v3, Lcom/xueqiu/android/base/h5/b;->b:Ljava/lang/String;

    .line 7591
    const/4 v1, 0x0

    invoke-direct {p0, v3, v1}, Lcom/xueqiu/android/base/h5/c;->a(Lcom/xueqiu/android/base/h5/b;I)V

    .line 7592
    if-ne p1, v11, :cond_1

    .line 7593
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :cond_1
    :goto_1
    const/16 v0, 0x2714

    if-ne p1, v0, :cond_2

    .line 332
    if-ne p2, v9, :cond_9

    .line 334
    if-nez p3, :cond_8

    .line 336
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->an:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 337
    new-array v0, v10, [Landroid/net/Uri;

    iget-object v1, p0, Lcom/xueqiu/android/base/h5/c;->an:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v8

    .line 345
    :goto_2
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/c;->am:Landroid/webkit/ValueCallback;

    invoke-interface {v1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 349
    :goto_3
    iput-object v2, p0, Lcom/xueqiu/android/base/h5/c;->am:Landroid/webkit/ValueCallback;

    .line 351
    :cond_2
    return-void

    .line 7567
    :cond_3
    invoke-virtual {p0}, Lcom/xueqiu/android/base/h5/c;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 7568
    if-eqz v1, :cond_b

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 7569
    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 7570
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7571
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .line 7574
    :cond_4
    if-eq p1, v11, :cond_5

    const/16 v0, 0x2715

    if-ne p1, v0, :cond_b

    .line 7575
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xueqiu/android/base/h5/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "temp.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 7596
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 7597
    invoke-direct {p0, v3, v10}, Lcom/xueqiu/android/base/h5/c;->a(Lcom/xueqiu/android/base/h5/b;I)V

    goto :goto_1

    .line 320
    :cond_6
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->al:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_7

    if-ne p2, v9, :cond_1

    .line 321
    :cond_7
    if-eqz p3, :cond_1

    .line 322
    const-string v0, "extra_event"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/base/h5/b;

    .line 323
    const-string v1, "extra_event_result"

    invoke-virtual {p3, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 324
    if-eqz v0, :cond_1

    .line 325
    invoke-direct {p0, v0, v1}, Lcom/xueqiu/android/base/h5/c;->a(Lcom/xueqiu/android/base/h5/b;I)V

    goto/16 :goto_1

    .line 340
    :cond_8
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 341
    if-eqz v1, :cond_a

    .line 342
    new-array v0, v10, [Landroid/net/Uri;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v8

    goto/16 :goto_2

    .line 347
    :cond_9
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->am:Landroid/webkit/ValueCallback;

    invoke-interface {v0, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_a
    move-object v0, v2

    goto/16 :goto_2

    :cond_b
    move-object v0, v2

    goto/16 :goto_0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 196
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->a(Landroid/os/Bundle;)V

    .line 1564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 197
    if-eqz v0, :cond_0

    .line 2564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 198
    const-string v1, "arg_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/base/h5/c;->b:Ljava/lang/String;

    .line 3564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 199
    const-string v1, "arg_is_module"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/base/h5/c;->ak:Z

    .line 4564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 200
    const-string v1, "arg_event"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/base/h5/b;

    iput-object v0, p0, Lcom/xueqiu/android/base/h5/c;->d:Lcom/xueqiu/android/base/h5/b;

    .line 5084
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/h5/f;->a()Lcom/xueqiu/android/base/h5/e;

    move-result-object v0

    .line 5134
    iget-object v0, v0, Lcom/xueqiu/android/base/h5/e;->b:Lcom/xueqiu/android/base/h5/k;

    .line 204
    if-nez v0, :cond_1

    .line 205
    const v0, 0x7f070430

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    .line 206
    invoke-virtual {p0}, Lcom/xueqiu/android/base/h5/c;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->finish()V

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-boolean v0, p0, Lcom/xueqiu/android/base/h5/c;->ak:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 211
    :goto_1
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    goto :goto_0

    .line 210
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 359
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->c:Lcom/xueqiu/android/base/h5/d;

    if-eqz v0, :cond_2

    .line 360
    const v0, 0x7f0e0012

    iget-object v1, p0, Lcom/xueqiu/android/base/h5/c;->c:Lcom/xueqiu/android/base/h5/d;

    .line 8320
    iget-object v1, v1, Lcom/xueqiu/android/base/h5/d;->a:Ljava/lang/String;

    .line 360
    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 361
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/c;->c:Lcom/xueqiu/android/base/h5/d;

    .line 8328
    iget-object v1, v1, Lcom/xueqiu/android/base/h5/d;->b:Ljava/lang/String;

    .line 361
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xueqiu/android/base/h5/c;->c:Lcom/xueqiu/android/base/h5/d;

    .line 9328
    iget-object v1, v1, Lcom/xueqiu/android/base/h5/d;->b:Ljava/lang/String;

    .line 361
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 362
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/xueqiu/android/base/h5/c;->h()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/base/h5/c;->c:Lcom/xueqiu/android/base/h5/d;

    .line 10328
    iget-object v3, v3, Lcom/xueqiu/android/base/h5/d;->b:Ljava/lang/String;

    .line 362
    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 363
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 365
    :cond_0
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 382
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/c;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 383
    return-void

    .line 367
    :cond_2
    iget-boolean v0, p0, Lcom/xueqiu/android/base/h5/c;->ak:Z

    if-nez v0, :cond_1

    .line 368
    invoke-virtual {p0}, Lcom/xueqiu/android/base/h5/c;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    new-array v1, v5, [I

    const v2, 0x7f0100a3

    aput v2, v1, v3

    .line 369
    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 372
    const-string v1, "\u66f4\u591a"

    invoke-interface {p1, v3, v5, v3, v1}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v1

    .line 373
    invoke-interface {v1}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    .line 374
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 375
    invoke-static {v2, v4}, Landroid/support/v4/view/ak;->a(Landroid/view/MenuItem;I)V

    .line 377
    const v0, 0x7f07024e

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/base/h5/c;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v4, v3, v0}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 378
    const/4 v0, 0x3

    const v2, 0x7f0700c0

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/base/h5/c;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v0, v3, v2}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method final a(Lcom/google/gson/JsonObject;Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 684
    new-instance v2, Lcom/xueqiu/android/common/widget/an;

    invoke-direct {v2}, Lcom/xueqiu/android/common/widget/an;-><init>()V

    .line 685
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 17121
    iput-object v0, v2, Lcom/xueqiu/android/common/widget/an;->b:Ljava/lang/String;

    .line 688
    :cond_0
    const-string v0, "img"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 689
    const-string v0, "img"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 17137
    iput-object v0, v2, Lcom/xueqiu/android/common/widget/an;->e:Ljava/lang/String;

    .line 694
    :goto_0
    const-string v0, "ignoreImage"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "ignoreImage"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    .line 18157
    :goto_1
    iput-boolean v0, v2, Lcom/xueqiu/android/common/widget/an;->j:Z

    .line 697
    if-eqz p2, :cond_7

    .line 19105
    iput-object p2, v2, Lcom/xueqiu/android/common/widget/an;->g:Landroid/graphics/Bitmap;

    .line 705
    :cond_1
    :goto_2
    const-string v0, ""

    .line 706
    const-string v1, "url"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 707
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 20129
    iput-object v0, v2, Lcom/xueqiu/android/common/widget/an;->d:Ljava/lang/String;

    .line 710
    :cond_2
    const-string v1, "description"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 711
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "description"

    invoke-virtual {p1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21113
    iput-object v0, v2, Lcom/xueqiu/android/common/widget/an;->c:Ljava/lang/String;

    .line 714
    :cond_3
    const-string v0, ""

    .line 715
    const-string v1, "target"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 716
    const-string v0, "target"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 718
    :cond_4
    const-string v1, "SinaWeibo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 719
    invoke-virtual {p0}, Lcom/xueqiu/android/base/h5/c;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/xueqiu/android/common/widget/aj;->e(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/an;)V

    .line 729
    :goto_3
    return-void

    .line 691
    :cond_5
    invoke-virtual {p0}, Lcom/xueqiu/android/base/h5/c;->h()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f02006e

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 18101
    iput-object v0, v2, Lcom/xueqiu/android/common/widget/an;->f:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 694
    goto :goto_1

    .line 699
    :cond_7
    const-string v0, "imageBase64"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 700
    const-string v0, "imageBase64"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 701
    array-length v3, v0

    invoke-static {v0, v1, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 20105
    iput-object v0, v2, Lcom/xueqiu/android/common/widget/an;->g:Landroid/graphics/Bitmap;

    goto/16 :goto_2

    .line 720
    :cond_8
    const-string v1, "FriendCircle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 721
    invoke-virtual {p0}, Lcom/xueqiu/android/base/h5/c;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/xueqiu/android/common/widget/aj;->c(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/an;)V

    goto :goto_3

    .line 722
    :cond_9
    const-string v1, "Wechat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 723
    invoke-virtual {p0}, Lcom/xueqiu/android/base/h5/c;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/xueqiu/android/common/widget/aj;->b(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/an;)V

    goto :goto_3

    .line 724
    :cond_a
    const-string v1, "QQ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 725
    invoke-virtual {p0}, Lcom/xueqiu/android/base/h5/c;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/xueqiu/android/common/widget/aj;->d(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/an;)V

    goto :goto_3

    .line 727
    :cond_b
    invoke-virtual {p0}, Lcom/xueqiu/android/base/h5/c;->g()Landroid/support/v4/a/k;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lcom/xueqiu/android/common/widget/aj;->a(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/an;Lcom/xueqiu/android/common/widget/am;)Lcom/xueqiu/android/common/widget/aj;

    goto :goto_3
.end method

.method final a(Lcom/google/gson/JsonObject;Lcom/xueqiu/android/trade/model/TradeAccount;I)V
    .locals 2

    .prologue
    .line 673
    new-instance v0, Lcom/xueqiu/android/base/h5/b;

    invoke-direct {v0}, Lcom/xueqiu/android/base/h5/b;-><init>()V

    .line 674
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 17066
    iput-object v1, v0, Lcom/xueqiu/android/base/h5/b;->b:Ljava/lang/String;

    .line 675
    invoke-virtual {p0}, Lcom/xueqiu/android/base/h5/c;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-static {p2, v1, v0, p3}, Lcom/xueqiu/android/trade/g;->a(Lcom/xueqiu/android/trade/model/TradeAccount;Landroid/app/Activity;Lcom/xueqiu/android/base/h5/b;I)V

    .line 676
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/base/h5/c;->a(Lcom/xueqiu/android/base/h5/b;)V

    .line 677
    return-void
.end method

.method final declared-synchronized a(Lcom/xueqiu/android/base/h5/b;)V
    .locals 2

    .prologue
    .line 449
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->al:Landroid/util/SparseArray;

    .line 15046
    iget v1, p1, Lcom/xueqiu/android/base/h5/b;->a:I

    .line 449
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    monitor-exit p0

    return-void

    .line 449
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/xueqiu/android/base/h5/l;Lcom/google/gson/JsonArray;)V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 453
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->f:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->setVisibility(I)V

    .line 454
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->f:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    .line 15252
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 457
    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-lez v0, :cond_5

    move v0, v1

    .line 458
    :goto_0
    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 459
    invoke-virtual {p2, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 460
    const-string v2, "title"

    invoke-virtual {v3, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    .line 461
    const-string v2, "icon"

    invoke-virtual {v3, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "icon"

    invoke-virtual {v3, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 462
    :goto_1
    const-string v5, "highlight"

    invoke-virtual {v3, v5}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "highlight"

    invoke-virtual {v3, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    .line 463
    :goto_2
    invoke-static {v2}, Lcom/xueqiu/android/base/util/au;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "http://"

    .line 464
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "https://"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 465
    const-string v7, "file://%s%s%s"

    const/4 v5, 0x3

    new-array v8, v5, [Ljava/lang/Object;

    .line 16084
    invoke-static {}, Lcom/xueqiu/android/base/h5/f;->a()Lcom/xueqiu/android/base/h5/e;

    move-result-object v5

    .line 16134
    iget-object v5, v5, Lcom/xueqiu/android/base/h5/e;->b:Lcom/xueqiu/android/base/h5/k;

    .line 466
    iget-object v9, p0, Lcom/xueqiu/android/base/h5/c;->b:Ljava/lang/String;

    invoke-virtual {v5, v9}, Lcom/xueqiu/android/base/h5/k;->find(Ljava/lang/String;)Lcom/xueqiu/android/base/h5/g;

    move-result-object v5

    invoke-interface {v5}, Lcom/xueqiu/android/base/h5/g;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v1

    const-string v5, "/"

    .line 467
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, ""

    :goto_3
    aput-object v5, v8, v4

    const/4 v5, 0x2

    aput-object v2, v8, v5

    .line 465
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 470
    :cond_0
    iget-object v5, p0, Lcom/xueqiu/android/base/h5/c;->f:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    invoke-virtual {v5, v0, v6, v2, v3}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 458
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 461
    :cond_1
    const-string v2, ""

    goto :goto_1

    :cond_2
    move v3, v1

    .line 462
    goto :goto_2

    .line 467
    :cond_3
    const-string v5, "/"

    goto :goto_3

    .line 473
    :cond_4
    invoke-virtual {p0}, Lcom/xueqiu/android/base/h5/c;->h()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080055

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    move v2, v0

    .line 478
    :goto_4
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->e:Lcom/xueqiu/android/common/widget/SNBWebView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 479
    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 480
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/c;->e:Lcom/xueqiu/android/common/widget/SNBWebView;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/widget/SNBWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 482
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->f:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    new-instance v1, Lcom/xueqiu/android/base/h5/c$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/xueqiu/android/base/h5/c$1;-><init>(Lcom/xueqiu/android/base/h5/c;Lcom/google/gson/JsonArray;Lcom/xueqiu/android/base/h5/l;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->setOnMenuItemSelectedListener(Lcom/xueqiu/android/common/widget/j;)V

    .line 490
    return-void

    :cond_5
    move v2, v1

    .line 475
    goto :goto_4
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 387
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0e0012

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->c:Lcom/xueqiu/android/base/h5/d;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->e:Lcom/xueqiu/android/common/widget/SNBWebView;

    iget-object v1, p0, Lcom/xueqiu/android/base/h5/c;->c:Lcom/xueqiu/android/base/h5/d;

    .line 10336
    iget-object v1, v1, Lcom/xueqiu/android/base/h5/d;->c:Ljava/lang/String;

    .line 388
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/h5/l;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const/4 v0, 0x1

    .line 408
    :goto_0
    return v0

    .line 391
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 392
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->b:Ljava/lang/String;

    .line 393
    sget-object v1, Lcom/xueqiu/android/common/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 394
    sget-object v1, Lcom/xueqiu/android/common/q;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 396
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 397
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/base/h5/c;->a(Landroid/content/Intent;)V

    .line 408
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->a(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 398
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 399
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->b:Ljava/lang/String;

    .line 400
    sget-object v1, Lcom/xueqiu/android/common/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 401
    sget-object v1, Lcom/xueqiu/android/common/q;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 403
    :cond_4
    invoke-virtual {p0}, Lcom/xueqiu/android/base/h5/c;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/base/util/e;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 404
    const-string v0, "\u5df2\u590d\u5236\u5230\u526a\u5207\u677f"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final b(Lcom/google/gson/JsonObject;)V
    .locals 9

    .prologue
    .line 835
    :try_start_0
    new-instance v3, Lcom/xueqiu/android/base/h5/b;

    invoke-direct {v3}, Lcom/xueqiu/android/base/h5/b;-><init>()V

    .line 836
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 22066
    iput-object v0, v3, Lcom/xueqiu/android/base/h5/b;->b:Ljava/lang/String;

    .line 837
    invoke-virtual {p0, v3}, Lcom/xueqiu/android/base/h5/c;->a(Lcom/xueqiu/android/base/h5/b;)V

    .line 838
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 839
    const-string v1, "trade_no"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v6

    .line 840
    const-string v1, "service_no"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v4

    .line 841
    const-string v1, "order_info"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "recharge_url"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 843
    const-string v1, "third_pay_channel"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ALIPAY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22857
    new-instance v1, Lcom/xueqiu/android/base/h5/c$10;

    invoke-direct {v1, p0, v0}, Lcom/xueqiu/android/base/h5/c$10;-><init>(Lcom/xueqiu/android/base/h5/c;Ljava/lang/String;)V

    invoke-static {v1}, Lrx/a;->a(Lrx/b;)Lrx/a;

    move-result-object v0

    .line 22873
    invoke-static {}, Lrx/a/d/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/g;)Lrx/a;

    move-result-object v0

    .line 22874
    invoke-static {}, Lrx/h/p;->c()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/g;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/base/h5/c$11;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/xueqiu/android/base/h5/c$11;-><init>(Lcom/xueqiu/android/base/h5/c;Lcom/xueqiu/android/base/h5/b;JJ)V

    new-instance v2, Lcom/xueqiu/android/base/h5/c$12;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/base/h5/c$12;-><init>(Lcom/xueqiu/android/base/h5/c;)V

    .line 22875
    invoke-virtual {v0, v1, v2}, Lrx/a;->a(Lrx/c/b;Lrx/c/b;)Lrx/j;

    .line 22915
    :goto_0
    return-void

    .line 845
    :cond_0
    const-string v1, "third_pay_channel"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WXPAY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 22911
    invoke-virtual {p0}, Lcom/xueqiu/android/base/h5/c;->f()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wx8be10642d9baf61f"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v1

    .line 22912
    const-string v2, "wx8be10642d9baf61f"

    invoke-interface {v1, v2}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 22913
    invoke-interface {v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 22914
    const-string v0, "\u8bf7\u5148\u5b89\u88c5\u5fae\u4fe1"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 852
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 22918
    :cond_1
    :try_start_1
    invoke-static {v0}, Lcom/xueqiu/android/base/util/az;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 22919
    new-instance v8, Lcom/tencent/mm/sdk/modelpay/PayReq;

    invoke-direct {v8}, Lcom/tencent/mm/sdk/modelpay/PayReq;-><init>()V

    .line 22920
    const-string v0, "appid"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v8, Lcom/tencent/mm/sdk/modelpay/PayReq;->appId:Ljava/lang/String;

    .line 22921
    const-string v0, "partnerid"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v8, Lcom/tencent/mm/sdk/modelpay/PayReq;->partnerId:Ljava/lang/String;

    .line 22922
    const-string v0, "prepayid"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v8, Lcom/tencent/mm/sdk/modelpay/PayReq;->prepayId:Ljava/lang/String;

    .line 22923
    const-string v0, "noncestr"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v8, Lcom/tencent/mm/sdk/modelpay/PayReq;->nonceStr:Ljava/lang/String;

    .line 22924
    const-string v0, "timestamp"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v8, Lcom/tencent/mm/sdk/modelpay/PayReq;->timeStamp:Ljava/lang/String;

    .line 22925
    const-string v0, "sign"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v8, Lcom/tencent/mm/sdk/modelpay/PayReq;->sign:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 22927
    :try_start_2
    const-string v0, "package"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/tencent/mm/sdk/modelpay/PayReq;->packageValue:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 22931
    :goto_1
    :try_start_3
    invoke-interface {v1, v8}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z

    .line 22933
    invoke-virtual {p0}, Lcom/xueqiu/android/base/h5/c;->y()Landroid/app/Dialog;

    .line 22935
    new-instance v1, Lcom/xueqiu/android/base/h5/c$13;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/xueqiu/android/base/h5/c$13;-><init>(Lcom/xueqiu/android/base/h5/c;Lcom/xueqiu/android/base/h5/b;JJ)V

    iput-object v1, p0, Lcom/xueqiu/android/base/h5/c;->g:Landroid/content/BroadcastReceiver;

    .line 22953
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "wechat_intent_pay"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 22954
    invoke-virtual {p0}, Lcom/xueqiu/android/base/h5/c;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/base/h5/c;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto/16 :goto_0

    .line 22929
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 848
    :cond_2
    const v0, 0x7f070265

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    .line 849
    const/4 v0, 0x0

    invoke-direct {p0, v3, v0}, Lcom/xueqiu/android/base/h5/c;->a(Lcom/xueqiu/android/base/h5/b;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 282
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->ap:Lcom/xueqiu/android/base/h5/l;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->ap:Lcom/xueqiu/android/base/h5/l;

    .line 6832
    iget-object v0, v0, Lcom/xueqiu/android/base/h5/l;->b:Lcom/xueqiu/android/common/widget/SNBWebView;

    const-string v1, "window.viewDidDisappear"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/h5/l;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :cond_0
    invoke-super {p0}, Lcom/xueqiu/android/common/c;->d()V

    .line 286
    return-void
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 290
    invoke-super {p0}, Lcom/xueqiu/android/common/c;->e()V

    .line 291
    return-void
.end method

.method public final q()V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->aq:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->aq:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/xueqiu/android/base/h5/c;->e:Lcom/xueqiu/android/common/widget/SNBWebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 301
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->e:Lcom/xueqiu/android/common/widget/SNBWebView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBWebView;->removeAllViews()V

    .line 302
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->e:Lcom/xueqiu/android/common/widget/SNBWebView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBWebView;->destroy()V

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/base/h5/c;->aq:Landroid/widget/FrameLayout;

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->ap:Lcom/xueqiu/android/base/h5/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->ap:Lcom/xueqiu/android/base/h5/l;

    .line 7275
    iget-boolean v0, v0, Lcom/xueqiu/android/base/h5/l;->c:Z

    .line 305
    if-nez v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->ap:Lcom/xueqiu/android/base/h5/l;

    .line 7279
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/xueqiu/android/base/h5/l;->c:Z

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->g:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 309
    invoke-virtual {p0}, Lcom/xueqiu/android/base/h5/c;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/base/h5/c;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;)V

    .line 311
    :cond_2
    invoke-super {p0}, Lcom/xueqiu/android/common/c;->q()V

    .line 312
    return-void
.end method

.method public final y_()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 1130
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c;->d:Lcom/xueqiu/android/base/h5/b;

    if-eqz v0, :cond_2

    .line 1131
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v2, p0, Lcom/xueqiu/android/base/h5/c;->d:Lcom/xueqiu/android/base/h5/b;

    .line 23062
    iget-object v2, v2, Lcom/xueqiu/android/base/h5/b;->b:Ljava/lang/String;

    .line 1131
    const-class v3, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 1132
    const-string v2, "cancel"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1133
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1134
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1135
    const-string v4, "extra_event"

    iget-object v5, p0, Lcom/xueqiu/android/base/h5/c;->d:Lcom/xueqiu/android/base/h5/b;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1136
    const-string v4, "extra_event_result"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1137
    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1138
    invoke-virtual {p0}, Lcom/xueqiu/android/base/h5/c;->g()Landroid/support/v4/a/k;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v2}, Landroid/support/v4/a/k;->setResult(ILandroid/content/Intent;)V

    .line 1140
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/base/h5/c;->g()Landroid/support/v4/a/k;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/a/k;->finish()V

    .line 1141
    const-string v2, "MODAL"

    const-string v3, "type"

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1142
    invoke-virtual {p0}, Lcom/xueqiu/android/base/h5/c;->g()Landroid/support/v4/a/k;

    move-result-object v0

    const v2, 0x7f040007

    const v3, 0x7f040013

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/a/k;->overridePendingTransition(II)V

    :cond_1
    move v0, v1

    .line 1146
    :goto_0
    return v0

    :cond_2
    invoke-super {p0}, Lcom/xueqiu/android/common/c;->y_()Z

    move-result v0

    goto :goto_0
.end method
