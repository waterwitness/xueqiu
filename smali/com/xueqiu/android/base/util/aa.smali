.class public final Lcom/xueqiu/android/base/util/aa;
.super Ljava/lang/Object;
.source "NotificationsUtil.java"


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static b:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 182
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/xueqiu/android/base/util/aa;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 312
    const/4 v0, 0x0

    sput-object v0, Lcom/xueqiu/android/base/util/aa;->b:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/support/v4/a/av;
    .locals 3

    .prologue
    .line 363
    new-instance v0, Landroid/support/v4/a/av;

    invoke-direct {v0, p0}, Landroid/support/v4/a/av;-><init>(Landroid/content/Context;)V

    .line 364
    const v1, 0x7f07000d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/a/av;->a(Ljava/lang/CharSequence;)Landroid/support/v4/a/av;

    move-result-object v1

    sget-object v2, Lcom/xueqiu/android/base/util/aa;->b:Landroid/graphics/Bitmap;

    .line 9147
    iput-object v2, v1, Landroid/support/v4/a/av;->g:Landroid/graphics/Bitmap;

    .line 365
    const v2, 0x7f020305

    .line 366
    invoke-virtual {v1, v2}, Landroid/support/v4/a/av;->a(I)Landroid/support/v4/a/av;

    .line 368
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 369
    const v1, 0x7f0204ac

    invoke-virtual {v0, v1}, Landroid/support/v4/a/av;->a(I)Landroid/support/v4/a/av;

    .line 372
    :cond_0
    return-object v0
.end method

.method public static a()V
    .locals 0

    .prologue
    .line 103
    invoke-static {}, Lcom/xueqiu/android/base/util/an;->a()V

    .line 104
    return-void
.end method

.method public static a(I)V
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    .line 85
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 376
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 377
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 378
    return-void
.end method

.method public static a(Landroid/content/Context;J)V
    .locals 3

    .prologue
    .line 381
    sget-object v0, Lcom/xueqiu/android/base/util/ag;->d:Lrx/h;

    new-instance v1, Lcom/xueqiu/android/base/util/aa$4;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/base/util/aa$4;-><init>(Landroid/content/Context;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, p1, p2, v2}, Lrx/h;->a(Lrx/c/a;JLjava/util/concurrent/TimeUnit;)Lrx/j;

    .line 387
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;IZZ)V
    .locals 7

    .prologue
    .line 315
    const-string v2, ""

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/xueqiu/android/base/util/aa;->a(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 316
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 323
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 324
    if-eqz p5, :cond_1

    .line 325
    sget-object v1, Lcom/xueqiu/android/base/util/aa;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    sget-object v1, Lcom/xueqiu/android/base/util/aa;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 328
    :cond_0
    sget-object v1, Lcom/xueqiu/android/base/util/aa;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, p4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 331
    :cond_1
    sget-object v1, Lcom/xueqiu/android/base/util/aa;->b:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 332
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f020304

    invoke-static {v1, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/xueqiu/android/base/util/aa;->b:Landroid/graphics/Bitmap;

    .line 335
    :cond_2
    invoke-static {p0}, Lcom/xueqiu/android/base/util/aa;->a(Landroid/content/Context;)Landroid/support/v4/a/av;

    move-result-object v1

    .line 336
    invoke-virtual {v1, p3}, Landroid/support/v4/a/av;->b(Ljava/lang/CharSequence;)Landroid/support/v4/a/av;

    move-result-object v1

    .line 337
    invoke-virtual {v1, p3}, Landroid/support/v4/a/av;->c(Ljava/lang/CharSequence;)Landroid/support/v4/a/av;

    move-result-object v1

    new-instance v4, Landroid/support/v4/a/au;

    invoke-direct {v4}, Landroid/support/v4/a/au;-><init>()V

    .line 338
    invoke-virtual {v4, p3}, Landroid/support/v4/a/au;->a(Ljava/lang/CharSequence;)Landroid/support/v4/a/au;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v4/a/av;->a(Landroid/support/v4/a/bh;)Landroid/support/v4/a/av;

    move-result-object v1

    .line 339
    invoke-virtual {v1, v2}, Landroid/support/v4/a/av;->a(Z)Landroid/support/v4/a/av;

    move-result-object v4

    .line 6204
    iget-object v1, v4, Landroid/support/v4/a/av;->B:Landroid/app/Notification;

    const v5, -0xffaa5e

    iput v5, v1, Landroid/app/Notification;->ledARGB:I

    .line 6205
    iget-object v1, v4, Landroid/support/v4/a/av;->B:Landroid/app/Notification;

    const/16 v5, 0x3e8

    iput v5, v1, Landroid/app/Notification;->ledOnMS:I

    .line 6206
    iget-object v1, v4, Landroid/support/v4/a/av;->B:Landroid/app/Notification;

    const/16 v5, 0x1f4

    iput v5, v1, Landroid/app/Notification;->ledOffMS:I

    .line 6207
    iget-object v1, v4, Landroid/support/v4/a/av;->B:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->ledOnMS:I

    if-eqz v1, :cond_7

    iget-object v1, v4, Landroid/support/v4/a/av;->B:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->ledOffMS:I

    if-eqz v1, :cond_7

    move v1, v2

    .line 6208
    :goto_0
    iget-object v5, v4, Landroid/support/v4/a/av;->B:Landroid/app/Notification;

    iget-object v6, v4, Landroid/support/v4/a/av;->B:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, -0x2

    if-eqz v1, :cond_3

    move v3, v2

    :cond_3
    or-int v1, v6, v3

    iput v1, v5, Landroid/app/Notification;->flags:I

    .line 341
    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 342
    invoke-virtual {v4, p2}, Landroid/support/v4/a/av;->a(Ljava/lang/CharSequence;)Landroid/support/v4/a/av;

    .line 345
    :cond_4
    if-eqz p1, :cond_5

    .line 7083
    iput-object p1, v4, Landroid/support/v4/a/av;->d:Landroid/app/PendingIntent;

    .line 7358
    :cond_5
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 7359
    const v3, 0x7f0701e2

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 349
    if-eqz v1, :cond_6

    if-eqz p6, :cond_6

    .line 350
    const/4 v1, 0x2

    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 8160
    iget-object v2, v4, Landroid/support/v4/a/av;->B:Landroid/app/Notification;

    iput-object v1, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 8161
    iget-object v1, v4, Landroid/support/v4/a/av;->B:Landroid/app/Notification;

    const/4 v2, -0x1

    iput v2, v1, Landroid/app/Notification;->audioStreamType:I

    .line 353
    :cond_6
    invoke-virtual {v4}, Landroid/support/v4/a/av;->b()Landroid/app/Notification;

    move-result-object v1

    .line 354
    invoke-virtual {v0, p4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 355
    return-void

    :cond_7
    move v1, v3

    .line 6207
    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/xueqiu/android/message/model/Message;)V
    .locals 7

    .prologue
    .line 262
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getSystemEvent()Lcom/snowballfinance/messageplatform/data/SystemEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->getUrl()Ljava/lang/String;

    move-result-object v6

    .line 263
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getSystemEvent()Lcom/snowballfinance/messageplatform/data/SystemEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->getText()Ljava/lang/String;

    move-result-object v2

    .line 264
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getId()J

    move-result-wide v4

    .line 265
    invoke-static {v6, p0}, Lcom/xueqiu/android/common/q;->c(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 267
    if-nez v0, :cond_0

    .line 277
    :goto_0
    return-void

    .line 270
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xueqiu.android.action.NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 271
    const-string v1, "intent_url"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    long-to-int v1, v4

    const/high16 v3, 0x8000000

    invoke-static {p0, v1, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 273
    long-to-int v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/xueqiu/android/base/util/aa;->a(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;IZZ)V

    .line 274
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x3e8

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 275
    const-string v1, "url"

    invoke-virtual {v0, v1, v6}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 6053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 276
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 319
    const/4 v1, 0x0

    const/16 v4, 0x270e

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v6}, Lcom/xueqiu/android/base/util/aa;->a(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 320
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/message/model/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xueqiu/android/message/model/Message;

    .line 194
    const-string v1, "NotificationsUtil"

    const-string v2, "[from:%d] [to:%d] [text:%s] [notify:%d]"

    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {v4}, Lcom/xueqiu/android/message/model/Message;->getFromId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v0

    const/4 v0, 0x1

    invoke-virtual {v4}, Lcom/xueqiu/android/message/model/Message;->getToId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v0

    const/4 v0, 0x2

    invoke-virtual {v4}, Lcom/xueqiu/android/message/model/Message;->getText()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    const/4 v5, 0x3

    invoke-virtual {v4}, Lcom/xueqiu/android/message/model/Message;->isNotify()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {v4}, Lcom/xueqiu/android/message/model/Message;->isByMyself()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v4}, Lcom/xueqiu/android/message/model/Message;->isNotify()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v1

    .line 199
    :try_start_0
    invoke-static {p0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getTalk(Lcom/xueqiu/android/message/model/Message;)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v3

    .line 200
    if-eqz v3, :cond_0

    .line 201
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/xueqiu/android/message/ChatActivity;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 202
    const-string v0, "talk"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 203
    const/high16 v0, 0x20000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 204
    invoke-virtual {v4}, Lcom/xueqiu/android/message/model/Message;->getSummary()Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-virtual {v4}, Lcom/xueqiu/android/message/model/Message;->getFromId()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-eqz v5, :cond_b

    .line 207
    invoke-virtual {v4}, Lcom/xueqiu/android/message/model/Message;->getFromId()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/xueqiu/android/base/storage/DBManager;->queryUserByUserId(J)Lcom/xueqiu/android/community/model/User;

    move-result-object v1

    .line 208
    if-eqz v1, :cond_3

    .line 5281
    invoke-virtual {v4}, Lcom/xueqiu/android/message/model/Message;->getType()I

    move-result v0

    const/4 v5, 0x3

    if-eq v0, v5, :cond_1

    invoke-virtual {v4}, Lcom/xueqiu/android/message/model/Message;->getType()I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_7

    .line 5282
    :cond_1
    invoke-virtual {v4}, Lcom/xueqiu/android/message/model/Message;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snowballfinance/messageplatform/b/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5283
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5284
    invoke-virtual {v4}, Lcom/xueqiu/android/message/model/Message;->isToGroup()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5285
    const-string v1, "\u5728\u7fa4\u91cc"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5287
    :cond_2
    const-string v1, "\u5206\u4eab\u4e86"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5288
    sget-object v1, Lcom/snowballfinance/messageplatform/b/e;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5289
    const-string v1, "\u4e00\u652f%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Lcom/snowballfinance/messageplatform/b/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snowballfinance/messageplatform/b/e;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/snowballfinance/messageplatform/b/e;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5295
    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_3
    move-object v5, v0

    .line 217
    :goto_4
    new-instance v7, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 220
    new-instance v0, Lcom/xueqiu/android/base/util/aa$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/xueqiu/android/base/util/aa$3;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/xueqiu/android/message/model/Talk;Lcom/xueqiu/android/message/model/Message;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 255
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 194
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 5290
    :cond_5
    :try_start_1
    sget-object v1, Lcom/snowballfinance/messageplatform/b/e;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5291
    const-string v0, "\u4e00\u4e2a\u8ba8\u8bba"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 5293
    :cond_6
    const-string v0, "\u4e00\u4e2a\u540d\u7247"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 5296
    :cond_7
    invoke-virtual {v4}, Lcom/xueqiu/android/message/model/Message;->getType()I

    move-result v0

    const/4 v5, 0x4

    if-ne v0, v5, :cond_9

    .line 5297
    invoke-virtual {v4}, Lcom/xueqiu/android/message/model/Message;->isToGroup()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5298
    const-string v0, "%s\u5728\u7fa4\u91cc\u5206\u4eab\u4e86\u4e00\u5f20\u56fe\u7247"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v7

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 5300
    :cond_8
    const-string v0, "%s\u5206\u4eab\u4e86\u4e00\u5f20\u56fe\u7247"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v7

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 5303
    :cond_9
    invoke-virtual {v4}, Lcom/xueqiu/android/message/model/Message;->isToGroup()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5304
    const-string v0, "%s\u5728\u7fa4\u91cc\u8bf4 : %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v7

    const/4 v1, 0x1

    invoke-virtual {v4}, Lcom/xueqiu/android/message/model/Message;->getSummary()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v1

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 5306
    :cond_a
    const-string v0, "%s : %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v7

    const/4 v1, 0x1

    invoke-virtual {v4}, Lcom/xueqiu/android/message/model/Message;->getSummary()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v1

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 214
    :cond_b
    invoke-virtual {v4}, Lcom/xueqiu/android/message/model/Message;->getType()I

    move-result v5

    const/4 v7, 0x7

    if-ne v5, v7, :cond_d

    .line 215
    invoke-virtual {v4}, Lcom/xueqiu/android/message/model/Message;->getSystemEvent()Lcom/snowballfinance/messageplatform/data/SystemEvent;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/message/client/e;->a(Lcom/xueqiu/android/base/storage/DBManager;Lcom/snowballfinance/messageplatform/data/SystemEvent;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    move-object v5, v0

    goto/16 :goto_4

    .line 259
    :cond_c
    return-void

    :cond_d
    move-object v5, v0

    goto/16 :goto_4
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 91
    new-instance v1, Lcom/xueqiu/android/base/util/aa$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/base/util/aa$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 100
    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;Z)V

    .line 75
    return-void
.end method

.method public static a(Ljava/lang/Throwable;Z)V
    .locals 5

    .prologue
    .line 79
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    .line 2121
    :try_start_0
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    move-result-object v1

    .line 2442
    iget-boolean v1, v1, Lcom/xueqiu/android/base/b;->c:Z

    .line 2121
    if-nez v1, :cond_1

    .line 2179
    :cond_0
    :goto_0
    return-void

    .line 2124
    :cond_1
    if-eqz v0, :cond_0

    .line 2127
    if-nez p0, :cond_2

    .line 2128
    const v0, 0x7f07022d

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2176
    :catch_0
    move-exception v0

    .line 2178
    const-string v1, "NotificationUtil"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/base/util/v;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2129
    :cond_2
    :try_start_1
    instance-of v1, p0, Ljavax/net/ssl/SSLHandshakeException;

    if-nez v1, :cond_3

    .line 2130
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v1, :cond_4

    .line 2131
    :cond_3
    const-string v0, "NotificationsUtil"

    const-string v1, "SSLHandshakeException"

    invoke-static {v0, v1, p0}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2132
    const v0, 0x7f070426

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    goto :goto_0

    .line 2133
    :cond_4
    instance-of v1, p0, Ljava/net/SocketTimeoutException;

    if-nez v1, :cond_5

    instance-of v1, p0, Lcom/android/volley/x;

    if-eqz v1, :cond_6

    .line 2134
    :cond_5
    if-eqz p1, :cond_0

    .line 2135
    const v0, 0x7f070448

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    goto :goto_0

    .line 2137
    :cond_6
    instance-of v1, p0, Ljava/net/SocketException;

    if-eqz v1, :cond_7

    .line 2138
    const-string v0, "NotificationsUtil"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2139
    if-eqz p1, :cond_0

    .line 2140
    const-string v0, "\u8bf7\u6c42\u6ca1\u6709\u54cd\u5e94\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5\u662f\u5426\u6b63\u5e38"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 2142
    :cond_7
    instance-of v1, p0, Ljava/io/IOException;

    if-nez v1, :cond_8

    instance-of v1, p0, Lcom/android/volley/j;

    if-eqz v1, :cond_9

    .line 2143
    :cond_8
    const-string v0, "NotificationsUtil"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2144
    if-eqz p1, :cond_0

    .line 2145
    const-string v0, "\u7f51\u7edc\u4e0d\u53ef\u7528\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5\u662f\u5426\u6b63\u5e38"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 2147
    :cond_9
    instance-of v1, p0, Lcom/xueqiu/android/base/a/a;

    if-eqz v1, :cond_d

    .line 2148
    check-cast p0, Lcom/xueqiu/android/base/a/a;

    .line 2149
    const-string v1, "NotificationsUtil"

    invoke-virtual {p0}, Lcom/xueqiu/android/base/a/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/util/v;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2150
    const-string v1, "400012"

    .line 3064
    iget-object v2, p0, Lcom/xueqiu/android/base/a/a;->errorCode:Ljava/lang/String;

    .line 2150
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2151
    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.xueqiu.android.intent.action.LOGGED_OUT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/content/r;->b(Landroid/content/Intent;)V

    .line 2152
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2153
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2154
    const-string v3, "extra_mode"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 2155
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2156
    const-class v2, Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2157
    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2158
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2159
    const-string v0, "\u8bf7\u91cd\u65b0\u767b\u5f55"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2160
    :cond_a
    const-string v1, "400016"

    .line 4064
    iget-object v2, p0, Lcom/xueqiu/android/base/a/a;->errorCode:Ljava/lang/String;

    .line 2160
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "400013"

    .line 5064
    iget-object v2, p0, Lcom/xueqiu/android/base/a/a;->errorCode:Ljava/lang/String;

    .line 2160
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2161
    :cond_b
    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xueqiu.android.intent.action.REFRESH_TOKEN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->b(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2162
    :cond_c
    invoke-virtual {p0}, Lcom/xueqiu/android/base/a/a;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5072
    iget-object v0, p0, Lcom/xueqiu/android/base/a/a;->errorDescription:Ljava/lang/String;

    .line 2163
    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2167
    :cond_d
    sget-boolean v1, Lcom/xueqiu/android/base/util/v;->a:Z

    if-eqz v1, :cond_f

    .line 2168
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2172
    :goto_1
    const-string v1, "NotificationsUtil"

    const-string v2, "Toasting for exception: "

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2173
    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2168
    :cond_e
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2170
    :cond_f
    const v1, 0x7f07022d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 107
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 108
    new-instance v1, Lcom/xueqiu/android/base/util/aa$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/base/util/aa$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 117
    return-void
.end method
