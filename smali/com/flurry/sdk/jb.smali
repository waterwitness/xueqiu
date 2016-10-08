.class public Lcom/flurry/sdk/jb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ll$a;


# static fields
.field static a:I

.field static b:I

.field static c:I

.field static d:I

.field static e:I

.field private static final f:Ljava/lang/String;


# instance fields
.field private A:I

.field private final B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/iu;",
            ">;"
        }
    .end annotation
.end field

.field private C:I

.field private D:I

.field private E:Z

.field private final F:Lcom/flurry/sdk/hm;

.field private final G:Lcom/flurry/sdk/kb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kb",
            "<",
            "Lcom/flurry/sdk/jg;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final j:Lcom/flurry/sdk/kb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kb",
            "<",
            "Lcom/flurry/sdk/lg;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/flurry/sdk/lf;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/io/File;

.field private m:Lcom/flurry/sdk/jz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jz",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/iz;",
            ">;>;"
        }
    .end annotation
.end field

.field private n:Z

.field private o:J

.field private p:Z

.field private q:Ljava/lang/String;

.field private r:B

.field private s:Ljava/lang/Long;

.field private t:I

.field private final u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/iz;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final w:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/iv;",
            ">;"
        }
    .end annotation
.end field

.field private final y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/iw;",
            ">;"
        }
    .end annotation
.end field

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const-class v0, Lcom/flurry/sdk/jb;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/jb;->f:Ljava/lang/String;

    .line 82
    const/16 v0, 0x64

    sput v0, Lcom/flurry/sdk/jb;->a:I

    .line 83
    const/16 v0, 0xa

    sput v0, Lcom/flurry/sdk/jb;->b:I

    .line 84
    const/16 v0, 0x3e8

    sput v0, Lcom/flurry/sdk/jb;->c:I

    .line 85
    const v0, 0x27100

    sput v0, Lcom/flurry/sdk/jb;->d:I

    .line 86
    const/16 v0, 0x32

    sput v0, Lcom/flurry/sdk/jb;->e:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/flurry/sdk/jb;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 116
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/flurry/sdk/jb;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 117
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/flurry/sdk/jb;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 119
    new-instance v0, Lcom/flurry/sdk/jb$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/jb$1;-><init>(Lcom/flurry/sdk/jb;)V

    iput-object v0, p0, Lcom/flurry/sdk/jb;->j:Lcom/flurry/sdk/kb;

    .line 162
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/sdk/jb;->t:I

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/jb;->u:Ljava/util/List;

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/jb;->v:Ljava/util/Map;

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/jb;->w:Ljava/util/Map;

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/jb;->x:Ljava/util/Map;

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/jb;->y:Ljava/util/List;

    .line 169
    iput-boolean v2, p0, Lcom/flurry/sdk/jb;->z:Z

    .line 170
    iput v1, p0, Lcom/flurry/sdk/jb;->A:I

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/jb;->B:Ljava/util/List;

    .line 172
    iput v1, p0, Lcom/flurry/sdk/jb;->C:I

    .line 173
    iput v1, p0, Lcom/flurry/sdk/jb;->D:I

    .line 175
    iput-boolean v2, p0, Lcom/flurry/sdk/jb;->E:Z

    .line 184
    new-instance v0, Lcom/flurry/sdk/hm;

    invoke-direct {v0}, Lcom/flurry/sdk/hm;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/jb;->F:Lcom/flurry/sdk/hm;

    .line 186
    new-instance v0, Lcom/flurry/sdk/jb$9;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/jb$9;-><init>(Lcom/flurry/sdk/jb;)V

    iput-object v0, p0, Lcom/flurry/sdk/jb;->G:Lcom/flurry/sdk/kb;

    .line 201
    invoke-static {}, Lcom/flurry/sdk/kc;->a()Lcom/flurry/sdk/kc;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.FlurrySessionEvent"

    iget-object v2, p0, Lcom/flurry/sdk/jb;->j:Lcom/flurry/sdk/kb;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/kc;->a(Ljava/lang/String;Lcom/flurry/sdk/kb;)V

    .line 202
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/jb;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/flurry/sdk/jb;->k:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/jb;ZJ)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/jb;->a(ZJ)V

    return-void
.end method

.method private a(Z)V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    const/4 v8, 0x5

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 493
    if-eqz p1, :cond_0

    .line 495
    iget-object v0, p0, Lcom/flurry/sdk/jb;->w:Ljava/util/Map;

    const-string v3, "boot.time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 499
    new-instance v3, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 500
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-lt v4, v5, :cond_3

    .line 501
    iget-object v4, p0, Lcom/flurry/sdk/jb;->w:Ljava/util/Map;

    const-string v5, "disk.size.total.internal"

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    iget-object v4, p0, Lcom/flurry/sdk/jb;->w:Ljava/util/Map;

    const-string v5, "disk.size.available.internal"

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    iget-object v0, p0, Lcom/flurry/sdk/jb;->w:Ljava/util/Map;

    const-string v4, "disk.size.total.external"

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    iget-object v0, p0, Lcom/flurry/sdk/jb;->w:Ljava/util/Map;

    const-string v4, "disk.size.available.external"

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    :goto_0
    iget-object v0, p0, Lcom/flurry/sdk/jb;->w:Ljava/util/Map;

    const-string v3, "carrier.name"

    invoke-static {}, Lcom/flurry/sdk/jm;->a()Lcom/flurry/sdk/jm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/jm;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    iget-object v0, p0, Lcom/flurry/sdk/jb;->w:Ljava/util/Map;

    const-string v3, "carrier.details"

    invoke-static {}, Lcom/flurry/sdk/jm;->a()Lcom/flurry/sdk/jm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/jm;->d()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/js;->c()Landroid/content/Context;

    move-result-object v0

    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 521
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 522
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 524
    iget-object v4, p0, Lcom/flurry/sdk/jb;->w:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "memory.available"

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    const-string v0, ".start"

    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v6, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v0, v4, :cond_1

    .line 526
    iget-object v4, p0, Lcom/flurry/sdk/jb;->w:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "memory.total"

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_5

    const-string v0, ".start"

    :goto_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v6, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 535
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/sdk/js;->c()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v4

    .line 537
    if-eqz v4, :cond_9

    .line 538
    const-string v0, "status"

    const/4 v3, -0x1

    invoke-virtual {v4, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 539
    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    if-ne v0, v8, :cond_6

    :cond_2
    const/4 v0, 0x1

    .line 541
    :goto_3
    :try_start_1
    const-string v1, "level"

    const/4 v3, -0x1

    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 542
    :try_start_2
    const-string v1, "scale"

    const/4 v5, -0x1

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    move v2, v3

    .line 549
    :goto_4
    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 550
    iget-object v3, p0, Lcom/flurry/sdk/jb;->w:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v1, "battery.charging"

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_7

    const-string v1, ".start"

    :goto_5
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    iget-object v1, p0, Lcom/flurry/sdk/jb;->w:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "battery.remaining"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_8

    const-string v0, ".start"

    :goto_6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    return-void

    .line 507
    :cond_3
    iget-object v4, p0, Lcom/flurry/sdk/jb;->w:Ljava/util/Map;

    const-string v5, "disk.size.total.internal"

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    iget-object v4, p0, Lcom/flurry/sdk/jb;->w:Ljava/util/Map;

    const-string v5, "disk.size.available.internal"

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    iget-object v0, p0, Lcom/flurry/sdk/jb;->w:Ljava/util/Map;

    const-string v4, "disk.size.total.external"

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v6, v5

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    iget-object v0, p0, Lcom/flurry/sdk/jb;->w:Ljava/util/Map;

    const-string v4, "disk.size.available.external"

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v6, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 524
    :cond_4
    const-string v0, ".end"

    goto/16 :goto_1

    .line 526
    :cond_5
    const-string v0, ".end"

    goto/16 :goto_2

    :cond_6
    move v0, v1

    .line 539
    goto/16 :goto_3

    .line 545
    :catch_0
    move-exception v0

    move-object v3, v0

    move v0, v1

    move v1, v2

    .line 546
    :goto_7
    sget-object v4, Lcom/flurry/sdk/jb;->f:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error getting battery status: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v4, v3}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    move v9, v2

    move v2, v1

    move v1, v9

    goto/16 :goto_4

    .line 550
    :cond_7
    const-string v1, ".end"

    goto/16 :goto_5

    .line 551
    :cond_8
    const-string v0, ".end"

    goto :goto_6

    .line 545
    :catch_1
    move-exception v1

    move-object v3, v1

    move v1, v2

    goto :goto_7

    :catch_2
    move-exception v1

    move-object v9, v1

    move v1, v3

    move-object v3, v9

    goto :goto_7

    :cond_9
    move v0, v1

    move v1, v2

    goto/16 :goto_4
.end method

.method private declared-synchronized a(ZJ)V
    .locals 20

    .prologue
    .line 883
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/flurry/sdk/jb;->E:Z

    if-nez v2, :cond_1

    .line 884
    const/4 v2, 0x3

    sget-object v3, Lcom/flurry/sdk/jb;->f:Ljava/lang/String;

    const-string v4, "Analytics disabled, not sending agent report."

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 919
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 888
    :cond_1
    if-nez p1, :cond_2

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flurry/sdk/jb;->u:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 892
    :cond_2
    const/4 v2, 0x3

    sget-object v3, Lcom/flurry/sdk/jb;->f:Ljava/lang/String;

    const-string v4, "generating agent report"

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 894
    const/16 v19, 0x0

    .line 896
    :try_start_2
    new-instance v3, Lcom/flurry/sdk/ix;

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/js;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/flurry/sdk/jo;->a()Lcom/flurry/sdk/jo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/jo;->e()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/flurry/sdk/jb;->n:Z

    .line 897
    invoke-static {}, Lcom/flurry/sdk/jf;->a()Lcom/flurry/sdk/jf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/jf;->e()Z

    move-result v7

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/flurry/sdk/jb;->o:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/flurry/sdk/jb;->u:Ljava/util/List;

    .line 898
    invoke-static {}, Lcom/flurry/sdk/jf;->a()Lcom/flurry/sdk/jf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/jf;->h()Ljava/util/Map;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flurry/sdk/jb;->F:Lcom/flurry/sdk/hm;

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/flurry/sdk/hm;->a(Z)Ljava/util/Map;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flurry/sdk/jb;->v:Ljava/util/Map;

    .line 899
    invoke-static {}, Lcom/flurry/sdk/ju;->a()Lcom/flurry/sdk/ju;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/ju;->c()Ljava/util/HashMap;

    move-result-object v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-wide/from16 v10, p2

    invoke-direct/range {v3 .. v18}, Lcom/flurry/sdk/ix;-><init>(Ljava/lang/String;Ljava/lang/String;ZZJJLjava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;J)V

    .line 901
    invoke-virtual {v3}, Lcom/flurry/sdk/ix;->a()[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 906
    :goto_1
    if-nez v2, :cond_3

    .line 907
    :try_start_3
    sget-object v2, Lcom/flurry/sdk/jb;->f:Ljava/lang/String;

    const-string v3, "Error generating report"

    invoke-static {v2, v3}, Lcom/flurry/sdk/kg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/flurry/sdk/jb;->j()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 883
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 902
    :catch_0
    move-exception v2

    .line 903
    :try_start_4
    sget-object v3, Lcom/flurry/sdk/jb;->f:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception while generating report: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/flurry/sdk/kg;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v19

    goto :goto_1

    .line 909
    :cond_3
    const/4 v3, 0x3

    sget-object v4, Lcom/flurry/sdk/jb;->f:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "generated report of size "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/flurry/sdk/jb;->u:Ljava/util/List;

    .line 910
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " reports."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 909
    invoke-static {v3, v4, v5}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 913
    invoke-static {}, Lcom/flurry/sdk/hl;->a()Lcom/flurry/sdk/hl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/sdk/hl;->d()Lcom/flurry/sdk/iy;

    move-result-object v3

    .line 914
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/flurry/sdk/jt;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 915
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v5

    invoke-virtual {v5}, Lcom/flurry/sdk/js;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5, v4}, Lcom/flurry/sdk/iy;->b([BLjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method static synthetic b(Lcom/flurry/sdk/jb;)Lcom/flurry/sdk/kb;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/flurry/sdk/jb;->j:Lcom/flurry/sdk/kb;

    return-object v0
.end method

.method private declared-synchronized b(J)V
    .locals 3

    .prologue
    .line 555
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/jb;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/iw;

    .line 556
    invoke-virtual {v0}, Lcom/flurry/sdk/iw;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/flurry/sdk/iw;->b()Z

    move-result v2

    if-nez v2, :cond_0

    .line 557
    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/iw;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 555
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 560
    :cond_1
    monitor-exit p0

    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v8, 0x3

    .line 468
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 469
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 471
    if-eqz v2, :cond_2

    .line 472
    sget-object v0, Lcom/flurry/sdk/jb;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Launch Options Bundle is present "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 473
    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 472
    invoke-static {v8, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 475
    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 480
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 482
    :goto_1
    iget-object v4, p0, Lcom/flurry/sdk/jb;->v:Ljava/util/Map;

    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    sget-object v4, Lcom/flurry/sdk/jb;->f:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Launch options Key: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ". Its value: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v4, v0}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 480
    :cond_1
    const-string v1, "null"

    goto :goto_1

    .line 488
    :cond_2
    return-void
.end method

.method static synthetic c(Lcom/flurry/sdk/jb;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/flurry/sdk/jb;->i()V

    return-void
.end method

.method static synthetic d(Lcom/flurry/sdk/jb;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/flurry/sdk/jb;->m()V

    return-void
.end method

.method static synthetic e(Lcom/flurry/sdk/jb;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/flurry/sdk/jb;->n()V

    return-void
.end method

.method static synthetic f(Lcom/flurry/sdk/jb;)Ljava/util/List;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/flurry/sdk/jb;->u:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/flurry/sdk/jb;)Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/flurry/sdk/jb;->E:Z

    return v0
.end method

.method private declared-synchronized i()V
    .locals 6

    .prologue
    .line 928
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/jb;->f:Ljava/lang/String;

    const-string v2, "Loading persistent session report data."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 930
    iget-object v0, p0, Lcom/flurry/sdk/jb;->m:Lcom/flurry/sdk/jz;

    invoke-virtual {v0}, Lcom/flurry/sdk/jz;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 931
    if-eqz v0, :cond_1

    .line 932
    iget-object v1, p0, Lcom/flurry/sdk/jb;->u:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 962
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 935
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/jb;->l:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 936
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/jb;->f:Ljava/lang/String;

    const-string v2, "Legacy persistent agent data found, converting."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 938
    iget-object v0, p0, Lcom/flurry/sdk/jb;->l:Ljava/io/File;

    invoke-static {v0}, Lcom/flurry/sdk/ho;->a(Ljava/io/File;)Lcom/flurry/sdk/jc;

    move-result-object v2

    .line 939
    if-eqz v2, :cond_3

    .line 940
    invoke-virtual {v2}, Lcom/flurry/sdk/jc;->a()Z

    move-result v3

    .line 943
    invoke-virtual {v2}, Lcom/flurry/sdk/jc;->b()J

    move-result-wide v0

    .line 944
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_2

    .line 945
    invoke-static {}, Lcom/flurry/sdk/je;->a()Lcom/flurry/sdk/je;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/je;->d()J

    move-result-wide v0

    .line 948
    :cond_2
    iput-boolean v3, p0, Lcom/flurry/sdk/jb;->n:Z

    .line 949
    iput-wide v0, p0, Lcom/flurry/sdk/jb;->o:J

    .line 950
    invoke-direct {p0}, Lcom/flurry/sdk/jb;->n()V

    .line 952
    invoke-virtual {v2}, Lcom/flurry/sdk/jc;->c()Ljava/util/List;

    move-result-object v0

    .line 953
    if-eqz v0, :cond_3

    .line 954
    iget-object v1, p0, Lcom/flurry/sdk/jb;->u:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 958
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/jb;->l:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 959
    invoke-virtual {p0}, Lcom/flurry/sdk/jb;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 928
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private j()V
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, Lcom/flurry/sdk/jb;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 966
    iget-object v0, p0, Lcom/flurry/sdk/jb;->m:Lcom/flurry/sdk/jz;

    invoke-virtual {v0}, Lcom/flurry/sdk/jz;->b()Z

    .line 967
    return-void
.end method

.method private k()Ljava/lang/String;
    .locals 3

    .prologue
    .line 970
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ".flurryagent."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/js;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private l()Ljava/lang/String;
    .locals 4

    .prologue
    .line 974
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ".yflurryreport."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/js;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/flurry/sdk/lt;->i(Ljava/lang/String;)J

    move-result-wide v2

    const/16 v1, 0x10

    invoke-static {v2, v3, v1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private m()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 978
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/js;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "FLURRY_SHARED_PREFERENCES"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 980
    const-string v1, "com.flurry.sdk.previous_successful_report"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/flurry/sdk/jb;->n:Z

    .line 981
    const-string v1, "com.flurry.sdk.initial_run_time"

    invoke-static {}, Lcom/flurry/sdk/je;->a()Lcom/flurry/sdk/je;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/je;->d()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/sdk/jb;->o:J

    .line 982
    return-void
.end method

.method private n()V
    .locals 4

    .prologue
    .line 985
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/js;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "FLURRY_SHARED_PREFERENCES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 986
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 988
    const-string v1, "com.flurry.sdk.previous_successful_report"

    iget-boolean v2, p0, Lcom/flurry/sdk/jb;->n:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 989
    const-string v1, "com.flurry.sdk.initial_run_time"

    iget-wide v2, p0, Lcom/flurry/sdk/jb;->o:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 990
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 991
    return-void
.end method

.method private o()I
    .locals 1

    .prologue
    .line 994
    iget-object v0, p0, Lcom/flurry/sdk/jb;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method private p()I
    .locals 1

    .prologue
    .line 998
    iget-object v0, p0, Lcom/flurry/sdk/jb;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    .prologue
    .line 623
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    if-nez p3, :cond_1

    .line 634
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 627
    :cond_1
    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 631
    const-string v0, "\ue8ffsid+Tumblr"

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0}, Lcom/flurry/sdk/jb;->a(Ljava/lang/String;Ljava/util/Map;Z)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object v0

    .line 633
    const/4 v1, 0x5

    sget-object v2, Lcom/flurry/sdk/jb;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "logEvent status for syndication:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 623
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/util/Map;Z)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    .prologue
    .line 638
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventRecorded:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 640
    iget-boolean v0, p0, Lcom/flurry/sdk/jb;->E:Z

    if-nez v0, :cond_1

    .line 641
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventAnalyticsDisabled:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 642
    sget-object v1, Lcom/flurry/sdk/jb;->f:Ljava/lang/String;

    const-string v2, "Analytics has been disabled, not logging event."

    invoke-static {v1, v2}, Lcom/flurry/sdk/kg;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 717
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 646
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {}, Lcom/flurry/sdk/je;->a()Lcom/flurry/sdk/je;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/je;->e()J

    move-result-wide v4

    sub-long v4, v2, v4

    .line 648
    invoke-static {p1}, Lcom/flurry/sdk/lt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 649
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 650
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    goto :goto_0

    .line 653
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/jb;->x:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/iv;

    .line 654
    if-nez v0, :cond_4

    .line 655
    iget-object v0, p0, Lcom/flurry/sdk/jb;->x:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    sget v3, Lcom/flurry/sdk/jb;->a:I

    if-ge v0, v3, :cond_3

    .line 656
    new-instance v0, Lcom/flurry/sdk/iv;

    invoke-direct {v0}, Lcom/flurry/sdk/iv;-><init>()V

    .line 657
    const/4 v3, 0x1

    iput v3, v0, Lcom/flurry/sdk/iv;->a:I

    .line 658
    iget-object v3, p0, Lcom/flurry/sdk/jb;->x:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    sget-object v0, Lcom/flurry/sdk/jb;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Event count started: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/flurry/sdk/kg;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 671
    :goto_1
    iget-boolean v1, p0, Lcom/flurry/sdk/jb;->p:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/flurry/sdk/jb;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget v3, Lcom/flurry/sdk/jb;->c:I

    if-ge v1, v3, :cond_7

    iget v1, p0, Lcom/flurry/sdk/jb;->A:I

    sget v3, Lcom/flurry/sdk/jb;->d:I

    if-ge v1, v3, :cond_7

    .line 672
    if-nez p2, :cond_8

    .line 673
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    .line 675
    :goto_2
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    sget v1, Lcom/flurry/sdk/jb;->b:I

    if-le v0, v1, :cond_5

    .line 676
    sget-object v0, Lcom/flurry/sdk/jb;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MaxEventParams exceeded: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/kg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventParamsCountExceeded:Lcom/flurry/android/FlurryEventRecordStatus;

    goto/16 :goto_0

    .line 661
    :cond_3
    sget-object v0, Lcom/flurry/sdk/jb;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Too many different events. Event not counted: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/kg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventUniqueCountExceeded:Lcom/flurry/android/FlurryEventRecordStatus;

    goto :goto_1

    .line 666
    :cond_4
    iget v1, v0, Lcom/flurry/sdk/iv;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/flurry/sdk/iv;->a:I

    .line 667
    sget-object v0, Lcom/flurry/sdk/jb;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Event count incremented: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/kg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventRecorded:Lcom/flurry/android/FlurryEventRecordStatus;

    goto :goto_1

    .line 680
    :cond_5
    new-instance v0, Lcom/flurry/sdk/iw;

    invoke-direct {p0}, Lcom/flurry/sdk/jb;->o()I

    move-result v1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/flurry/sdk/iw;-><init>(ILjava/lang/String;Ljava/util/Map;JZ)V

    .line 683
    invoke-virtual {v0}, Lcom/flurry/sdk/iw;->d()I

    move-result v1

    iget v4, p0, Lcom/flurry/sdk/jb;->A:I

    add-int/2addr v1, v4

    sget v4, Lcom/flurry/sdk/jb;->d:I

    if-gt v1, v4, :cond_6

    .line 684
    iget-object v1, p0, Lcom/flurry/sdk/jb;->y:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 685
    iget v1, p0, Lcom/flurry/sdk/jb;->A:I

    invoke-virtual {v0}, Lcom/flurry/sdk/iw;->d()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/flurry/sdk/jb;->A:I

    .line 686
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventRecorded:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 692
    iget-boolean v1, p0, Lcom/flurry/sdk/jb;->E:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/flurry/sdk/hl;->a()Lcom/flurry/sdk/hl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/hl;->c()Lcom/flurry/sdk/ig;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 693
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v1

    new-instance v4, Lcom/flurry/sdk/jb$7;

    invoke-direct {v4, p0, v2, v3}, Lcom/flurry/sdk/jb$7;-><init>(Lcom/flurry/sdk/jb;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v1, v4}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 638
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 702
    :cond_6
    :try_start_2
    sget v0, Lcom/flurry/sdk/jb;->d:I

    iput v0, p0, Lcom/flurry/sdk/jb;->A:I

    .line 703
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/jb;->z:Z

    .line 705
    sget-object v0, Lcom/flurry/sdk/jb;->f:Ljava/lang/String;

    const-string v1, "Event Log size exceeded. No more event details logged."

    invoke-static {v0, v1}, Lcom/flurry/sdk/kg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventLogCountExceeded:Lcom/flurry/android/FlurryEventRecordStatus;

    goto/16 :goto_0

    .line 712
    :cond_7
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/flurry/sdk/jb;->z:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_8
    move-object v3, p2

    goto/16 :goto_2
.end method

.method declared-synchronized a(JJJI)Lcom/flurry/sdk/iz;
    .locals 7

    .prologue
    .line 570
    monitor-enter p0

    :try_start_0
    new-instance v2, Lcom/flurry/sdk/ja;

    invoke-direct {v2}, Lcom/flurry/sdk/ja;-><init>()V

    .line 572
    invoke-static {}, Lcom/flurry/sdk/jo;->a()Lcom/flurry/sdk/jo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/jo;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/ja;->a(Ljava/lang/String;)V

    .line 573
    invoke-virtual {v2, p1, p2}, Lcom/flurry/sdk/ja;->a(J)V

    .line 574
    invoke-virtual {v2, p3, p4}, Lcom/flurry/sdk/ja;->b(J)V

    .line 575
    invoke-virtual {v2, p5, p6}, Lcom/flurry/sdk/ja;->c(J)V

    .line 576
    iget-object v0, p0, Lcom/flurry/sdk/jb;->w:Ljava/util/Map;

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/ja;->a(Ljava/util/Map;)V

    .line 577
    invoke-static {}, Lcom/flurry/sdk/je;->a()Lcom/flurry/sdk/je;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/je;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/ja;->b(Ljava/lang/String;)V

    .line 578
    invoke-static {}, Lcom/flurry/sdk/je;->a()Lcom/flurry/sdk/je;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/je;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/ja;->c(Ljava/lang/String;)V

    .line 579
    invoke-static {}, Lcom/flurry/sdk/je;->a()Lcom/flurry/sdk/je;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/je;->k()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/ja;->b(Ljava/util/Map;)V

    .line 581
    invoke-static {}, Lcom/flurry/sdk/ji;->a()Lcom/flurry/sdk/ji;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ji;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/ja;->d(Ljava/lang/String;)V

    .line 582
    invoke-static {}, Lcom/flurry/sdk/ji;->a()Lcom/flurry/sdk/ji;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ji;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/ja;->e(Ljava/lang/String;)V

    .line 583
    invoke-virtual {v2, p7}, Lcom/flurry/sdk/ja;->a(I)V

    .line 584
    iget v0, p0, Lcom/flurry/sdk/jb;->t:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/flurry/sdk/jb;->t:I

    :goto_0
    invoke-virtual {v2, v0}, Lcom/flurry/sdk/ja;->b(I)V

    .line 585
    invoke-virtual {p0}, Lcom/flurry/sdk/jb;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/ja;->f(Ljava/lang/String;)V

    .line 587
    invoke-static {}, Lcom/flurry/sdk/jj;->a()Lcom/flurry/sdk/jj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/jj;->e()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/ja;->a(Landroid/location/Location;)V

    .line 589
    invoke-virtual {p0}, Lcom/flurry/sdk/jb;->h()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/ja;->c(I)V

    .line 590
    iget-byte v0, p0, Lcom/flurry/sdk/jb;->r:B

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/ja;->a(B)V

    .line 591
    iget-object v0, p0, Lcom/flurry/sdk/jb;->s:Ljava/lang/Long;

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/ja;->a(Ljava/lang/Long;)V

    .line 593
    invoke-virtual {p0}, Lcom/flurry/sdk/jb;->g()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/ja;->c(Ljava/util/Map;)V

    .line 594
    invoke-virtual {p0}, Lcom/flurry/sdk/jb;->e()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/ja;->a(Ljava/util/List;)V

    .line 595
    iget-boolean v0, p0, Lcom/flurry/sdk/jb;->z:Z

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/ja;->a(Z)V

    .line 597
    invoke-virtual {p0}, Lcom/flurry/sdk/jb;->f()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/ja;->b(Ljava/util/List;)V

    .line 598
    iget v0, p0, Lcom/flurry/sdk/jb;->C:I

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/ja;->d(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 603
    const/4 v1, 0x0

    .line 605
    :try_start_1
    new-instance v0, Lcom/flurry/sdk/iz;

    invoke-direct {v0, v2}, Lcom/flurry/sdk/iz;-><init>(Lcom/flurry/sdk/ja;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 610
    :goto_1
    if-nez v0, :cond_0

    .line 611
    :try_start_2
    sget-object v1, Lcom/flurry/sdk/jb;->f:Ljava/lang/String;

    const-string v2, "New session report wasn\'t created"

    invoke-static {v1, v2}, Lcom/flurry/sdk/kg;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 614
    :cond_0
    monitor-exit p0

    return-object v0

    .line 584
    :cond_1
    :try_start_3
    invoke-static {}, Lcom/flurry/sdk/lr;->j()I

    move-result v0

    goto :goto_0

    .line 606
    :catch_0
    move-exception v0

    .line 607
    const/4 v2, 0x5

    sget-object v3, Lcom/flurry/sdk/jb;->f:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error creating analytics session report: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    goto :goto_1

    .line 570
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 450
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/jb;->n:Z

    .line 451
    return-void
.end method

.method public declared-synchronized a(J)V
    .locals 3

    .prologue
    .line 367
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/kc;->a()Lcom/flurry/sdk/kc;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/jb;->G:Lcom/flurry/sdk/kb;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kc;->a(Lcom/flurry/sdk/kb;)V

    .line 370
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/jb$5;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/jb$5;-><init>(Lcom/flurry/sdk/jb;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    .line 398
    invoke-static {}, Lcom/flurry/sdk/jf;->a()Lcom/flurry/sdk/jf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/jf;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/jb$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/flurry/sdk/jb$6;-><init>(Lcom/flurry/sdk/jb;J)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    .line 407
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/lk;->a()Lcom/flurry/sdk/lk;

    move-result-object v0

    const-string v1, "Gender"

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/lk;->b(Ljava/lang/String;Lcom/flurry/sdk/ll$a;)Z

    .line 409
    invoke-static {}, Lcom/flurry/sdk/lk;->a()Lcom/flurry/sdk/lk;

    move-result-object v0

    const-string v1, "UserId"

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/lk;->b(Ljava/lang/String;Lcom/flurry/sdk/ll$a;)Z

    .line 411
    invoke-static {}, Lcom/flurry/sdk/lk;->a()Lcom/flurry/sdk/lk;

    move-result-object v0

    const-string v1, "Age"

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/lk;->b(Ljava/lang/String;Lcom/flurry/sdk/ll$a;)Z

    .line 412
    invoke-static {}, Lcom/flurry/sdk/lk;->a()Lcom/flurry/sdk/lk;

    move-result-object v0

    const-string v1, "LogEvents"

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/lk;->b(Ljava/lang/String;Lcom/flurry/sdk/ll$a;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    monitor-exit p0

    return-void

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 290
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/lr;->j()I

    move-result v0

    iput v0, p0, Lcom/flurry/sdk/jb;->t:I

    .line 292
    invoke-static {}, Lcom/flurry/sdk/hl;->a()Lcom/flurry/sdk/hl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hl;->e()Lcom/flurry/sdk/ii;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 293
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/jb$15;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/jb$15;-><init>(Lcom/flurry/sdk/jb;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    .line 302
    :cond_0
    iget-boolean v0, p0, Lcom/flurry/sdk/jb;->E:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/flurry/sdk/hl;->a()Lcom/flurry/sdk/hl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hl;->c()Lcom/flurry/sdk/ig;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 303
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/jb$16;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/jb$16;-><init>(Lcom/flurry/sdk/jb;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    :cond_1
    monitor-exit p0

    return-void

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/flurry/sdk/lf;Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x4

    .line 205
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flurry/sdk/jb;->k:Ljava/lang/ref/WeakReference;

    .line 207
    invoke-static {}, Lcom/flurry/sdk/lk;->a()Lcom/flurry/sdk/lk;

    move-result-object v1

    .line 209
    const-string v0, "LogEvents"

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ll;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/jb;->p:Z

    .line 210
    const-string v0, "LogEvents"

    invoke-virtual {v1, v0, p0}, Lcom/flurry/sdk/ll;->a(Ljava/lang/String;Lcom/flurry/sdk/ll$a;)V

    .line 211
    sget-object v0, Lcom/flurry/sdk/jb;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initSettings, LogEvents = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/flurry/sdk/jb;->p:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v0, "UserId"

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ll;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/sdk/jb;->q:Ljava/lang/String;

    .line 214
    const-string v0, "UserId"

    invoke-virtual {v1, v0, p0}, Lcom/flurry/sdk/ll;->a(Ljava/lang/String;Lcom/flurry/sdk/ll$a;)V

    .line 215
    sget-object v0, Lcom/flurry/sdk/jb;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initSettings, UserId = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/jb;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v0, "Gender"

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ll;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    iput-byte v0, p0, Lcom/flurry/sdk/jb;->r:B

    .line 218
    const-string v0, "Gender"

    invoke-virtual {v1, v0, p0}, Lcom/flurry/sdk/ll;->a(Ljava/lang/String;Lcom/flurry/sdk/ll$a;)V

    .line 219
    sget-object v0, Lcom/flurry/sdk/jb;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initSettings, Gender = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v3, p0, Lcom/flurry/sdk/jb;->r:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v0, "Age"

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ll;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lcom/flurry/sdk/jb;->s:Ljava/lang/Long;

    .line 222
    const-string v0, "Age"

    invoke-virtual {v1, v0, p0}, Lcom/flurry/sdk/ll;->a(Ljava/lang/String;Lcom/flurry/sdk/ll$a;)V

    .line 223
    sget-object v0, Lcom/flurry/sdk/jb;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initSettings, BirthDate = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/jb;->s:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v0, "analyticsEnabled"

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ll;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/jb;->E:Z

    .line 226
    const-string v0, "analyticsEnabled"

    invoke-virtual {v1, v0, p0}, Lcom/flurry/sdk/ll;->a(Ljava/lang/String;Lcom/flurry/sdk/ll$a;)V

    .line 227
    sget-object v0, Lcom/flurry/sdk/jb;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initSettings, AnalyticsEnabled = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/flurry/sdk/jb;->E:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-direct {p0}, Lcom/flurry/sdk/jb;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/jb;->l:Ljava/io/File;

    .line 231
    new-instance v0, Lcom/flurry/sdk/jz;

    invoke-direct {p0}, Lcom/flurry/sdk/jb;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, ".yflurryreport."

    new-instance v3, Lcom/flurry/sdk/jb$10;

    invoke-direct {v3, p0}, Lcom/flurry/sdk/jb$10;-><init>(Lcom/flurry/sdk/jb;)V

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/flurry/sdk/jz;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/le;)V

    iput-object v0, p0, Lcom/flurry/sdk/jb;->m:Lcom/flurry/sdk/jz;

    .line 238
    invoke-direct {p0, p2}, Lcom/flurry/sdk/jb;->c(Landroid/content/Context;)V

    .line 239
    invoke-direct {p0, v5}, Lcom/flurry/sdk/jb;->a(Z)V

    .line 243
    invoke-static {}, Lcom/flurry/sdk/hl;->a()Lcom/flurry/sdk/hl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hl;->c()Lcom/flurry/sdk/ig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 244
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/jb$11;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/jb$11;-><init>(Lcom/flurry/sdk/jb;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    .line 253
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/jb$12;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/jb$12;-><init>(Lcom/flurry/sdk/jb;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    .line 259
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/jb$13;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/jb$13;-><init>(Lcom/flurry/sdk/jb;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    .line 268
    invoke-static {}, Lcom/flurry/sdk/jf;->a()Lcom/flurry/sdk/jf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/jf;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/jb$14;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/jb$14;-><init>(Lcom/flurry/sdk/jb;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    .line 278
    :goto_0
    return-void

    .line 276
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/kc;->a()Lcom/flurry/sdk/kc;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.IdProviderFinishedEvent"

    iget-object v2, p0, Lcom/flurry/sdk/jb;->G:Lcom/flurry/sdk/kb;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/kc;->a(Ljava/lang/String;Lcom/flurry/sdk/kb;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v1, 0x4

    .line 418
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 440
    const/4 v0, 0x6

    sget-object v1, Lcom/flurry/sdk/jb;->f:Ljava/lang/String;

    const-string v2, "onSettingUpdate internal error!"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 443
    :goto_1
    return-void

    .line 418
    :sswitch_0
    const-string v2, "LogEvents"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "UserId"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "Gender"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "Age"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "analyticsEnabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 420
    :pswitch_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/jb;->p:Z

    .line 421
    sget-object v0, Lcom/flurry/sdk/jb;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSettingUpdate, LogEvents = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/flurry/sdk/jb;->p:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 424
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/flurry/sdk/jb;->q:Ljava/lang/String;

    .line 425
    sget-object v0, Lcom/flurry/sdk/jb;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSettingUpdate, UserId = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/jb;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 428
    :pswitch_2
    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    iput-byte v0, p0, Lcom/flurry/sdk/jb;->r:B

    .line 429
    sget-object v0, Lcom/flurry/sdk/jb;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSettingUpdate, Gender = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v3, p0, Lcom/flurry/sdk/jb;->r:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 432
    :pswitch_3
    check-cast p2, Ljava/lang/Long;

    iput-object p2, p0, Lcom/flurry/sdk/jb;->s:Ljava/lang/Long;

    .line 433
    sget-object v0, Lcom/flurry/sdk/jb;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSettingUpdate, Birthdate = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/jb;->s:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 436
    :pswitch_4
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/jb;->E:Z

    .line 437
    sget-object v0, Lcom/flurry/sdk/jb;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSettingUpdate, AnalyticsEnabled = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/flurry/sdk/jb;->E:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 418
    nop

    :sswitch_data_0
    .sparse-switch
        -0x686fe59a -> :sswitch_1
        -0x66855b25 -> :sswitch_4
        -0x2bfdf2a3 -> :sswitch_0
        0x100df -> :sswitch_3
        0x7eeadee1 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 761
    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    const-string v1, "uncaught"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 763
    :goto_0
    iget v2, p0, Lcom/flurry/sdk/jb;->C:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/flurry/sdk/jb;->C:I

    .line 764
    iget-object v2, p0, Lcom/flurry/sdk/jb;->B:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sget v3, Lcom/flurry/sdk/jb;->e:I

    if-ge v2, v3, :cond_2

    .line 765
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 766
    new-instance v0, Lcom/flurry/sdk/iu;

    invoke-direct {p0}, Lcom/flurry/sdk/jb;->p()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/flurry/sdk/iu;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 768
    iget-object v1, p0, Lcom/flurry/sdk/jb;->B:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 770
    sget-object v1, Lcom/flurry/sdk/jb;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error logged: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/flurry/sdk/iu;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/sdk/kg;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 788
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    move v1, v0

    .line 761
    goto :goto_0

    .line 771
    :cond_2
    if-eqz v1, :cond_4

    move v8, v0

    .line 774
    :goto_2
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/jb;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/flurry/sdk/jb;->B:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/iu;

    .line 776
    invoke-virtual {v0}, Lcom/flurry/sdk/iu;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "uncaught"

    .line 777
    invoke-virtual {v0}, Lcom/flurry/sdk/iu;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 778
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 779
    new-instance v0, Lcom/flurry/sdk/iu;

    invoke-direct {p0}, Lcom/flurry/sdk/jb;->p()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/flurry/sdk/iu;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 781
    iget-object v1, p0, Lcom/flurry/sdk/jb;->B:Ljava/util/List;

    invoke-interface {v1, v8, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 761
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 774
    :cond_3
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_2

    .line 786
    :cond_4
    :try_start_2
    sget-object v0, Lcom/flurry/sdk/jb;->f:Ljava/lang/String;

    const-string v1, "Max errors logged. No more errors logged."

    invoke-static {v0, v1}, Lcom/flurry/sdk/kg;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 722
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/jb;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/iw;

    .line 723
    invoke-virtual {v0, p1}, Lcom/flurry/sdk/iw;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 724
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {}, Lcom/flurry/sdk/je;->a()Lcom/flurry/sdk/je;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/je;->e()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 726
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget v1, p0, Lcom/flurry/sdk/jb;->A:I

    sget v4, Lcom/flurry/sdk/jb;->d:I

    if-ge v1, v4, :cond_1

    .line 728
    iget v1, p0, Lcom/flurry/sdk/jb;->A:I

    invoke-virtual {v0}, Lcom/flurry/sdk/iw;->d()I

    move-result v4

    sub-int/2addr v1, v4

    .line 730
    new-instance v4, Ljava/util/HashMap;

    .line 731
    invoke-virtual {v0}, Lcom/flurry/sdk/iw;->c()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 732
    invoke-virtual {v0, p2}, Lcom/flurry/sdk/iw;->a(Ljava/util/Map;)V

    .line 734
    invoke-virtual {v0}, Lcom/flurry/sdk/iw;->d()I

    move-result v5

    add-int/2addr v5, v1

    sget v6, Lcom/flurry/sdk/jb;->d:I

    if-gt v5, v6, :cond_4

    .line 735
    invoke-virtual {v0}, Lcom/flurry/sdk/iw;->c()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    sget v6, Lcom/flurry/sdk/jb;->b:I

    if-le v5, v6, :cond_3

    .line 736
    sget-object v1, Lcom/flurry/sdk/jb;->f:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "MaxEventParams exceeded on endEvent: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 737
    invoke-virtual {v0}, Lcom/flurry/sdk/iw;->c()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 736
    invoke-static {v1, v5}, Lcom/flurry/sdk/kg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    invoke-virtual {v0, v4}, Lcom/flurry/sdk/iw;->b(Ljava/util/Map;)V

    .line 754
    :cond_1
    :goto_0
    invoke-virtual {v0, v2, v3}, Lcom/flurry/sdk/iw;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 758
    :cond_2
    monitor-exit p0

    return-void

    .line 741
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Lcom/flurry/sdk/iw;->d()I

    move-result v4

    add-int/2addr v1, v4

    iput v1, p0, Lcom/flurry/sdk/jb;->A:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 722
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 745
    :cond_4
    :try_start_2
    invoke-virtual {v0, v4}, Lcom/flurry/sdk/iw;->b(Ljava/util/Map;)V

    .line 746
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/flurry/sdk/jb;->z:Z

    .line 747
    sget v1, Lcom/flurry/sdk/jb;->d:I

    iput v1, p0, Lcom/flurry/sdk/jb;->A:I

    .line 749
    sget-object v1, Lcom/flurry/sdk/jb;->f:Ljava/lang/String;

    const-string v4, "Event Log size exceeded. No more event details logged."

    invoke-static {v1, v4}, Lcom/flurry/sdk/kg;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized b()V
    .locals 1

    .prologue
    .line 618
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/flurry/sdk/jb;->D:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/jb;->D:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 619
    monitor-exit p0

    return-void

    .line 618
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Landroid/content/Context;)V
    .locals 10

    .prologue
    .line 314
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/flurry/sdk/jb;->a(Z)V

    .line 317
    invoke-static {}, Lcom/flurry/sdk/je;->a()Lcom/flurry/sdk/je;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/je;->d()J

    move-result-wide v2

    .line 318
    invoke-static {}, Lcom/flurry/sdk/je;->a()Lcom/flurry/sdk/je;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/je;->f()J

    move-result-wide v4

    .line 319
    invoke-static {}, Lcom/flurry/sdk/je;->a()Lcom/flurry/sdk/je;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/je;->h()J

    move-result-wide v6

    .line 320
    invoke-static {}, Lcom/flurry/sdk/je;->a()Lcom/flurry/sdk/je;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/je;->l()Lcom/flurry/sdk/jl$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/jl$a;->a()I

    move-result v8

    .line 322
    invoke-static {}, Lcom/flurry/sdk/je;->a()Lcom/flurry/sdk/je;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/je;->f()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/jb;->b(J)V

    .line 325
    iget-boolean v0, p0, Lcom/flurry/sdk/jb;->E:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/flurry/sdk/hl;->a()Lcom/flurry/sdk/hl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hl;->c()Lcom/flurry/sdk/ig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 326
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/jb$2;

    invoke-direct {v1, p0, v2, v3}, Lcom/flurry/sdk/jb$2;-><init>(Lcom/flurry/sdk/jb;J)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    .line 335
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/jb$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/jb$3;-><init>(Lcom/flurry/sdk/jb;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    .line 344
    invoke-static {}, Lcom/flurry/sdk/jf;->a()Lcom/flurry/sdk/jf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/jf;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v9

    new-instance v0, Lcom/flurry/sdk/jb$4;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/flurry/sdk/jb$4;-><init>(Lcom/flurry/sdk/jb;JJJI)V

    invoke-virtual {v9, v0}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    :cond_1
    monitor-exit p0

    return-void

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 3

    .prologue
    .line 922
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/jb;->f:Ljava/lang/String;

    const-string v2, "Saving persistent agent data."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 924
    iget-object v0, p0, Lcom/flurry/sdk/jb;->m:Lcom/flurry/sdk/jz;

    iget-object v1, p0, Lcom/flurry/sdk/jb;->u:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jz;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 925
    monitor-exit p0

    return-void

    .line 922
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/flurry/sdk/jb;->q:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/jb;->q:Ljava/lang/String;

    goto :goto_0
.end method

.method e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/iw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/flurry/sdk/jb;->y:Ljava/util/List;

    return-object v0
.end method

.method f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/iu;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/flurry/sdk/jb;->B:Ljava/util/List;

    return-object v0
.end method

.method g()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/iv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/flurry/sdk/jb;->x:Ljava/util/Map;

    return-object v0
.end method

.method h()I
    .locals 1

    .prologue
    .line 1038
    iget v0, p0, Lcom/flurry/sdk/jb;->D:I

    return v0
.end method
