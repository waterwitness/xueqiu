.class final Lcom/sleepycat/b/h/n;
.super Ljava/lang/Object;
.source "RecoveryManager.java"


# static fields
.field static d:Lcom/sleepycat/b/h/n;

.field static e:Lcom/sleepycat/b/h/n;


# instance fields
.field final a:Z

.field final b:Lcom/sleepycat/b/n/z;

.field final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1561
    new-instance v0, Lcom/sleepycat/b/h/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sleepycat/b/h/n;-><init>(Z)V

    sput-object v0, Lcom/sleepycat/b/h/n;->d:Lcom/sleepycat/b/h/n;

    .line 1562
    new-instance v0, Lcom/sleepycat/b/h/n;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/sleepycat/b/h/n;-><init>(Z)V

    sput-object v0, Lcom/sleepycat/b/h/n;->e:Lcom/sleepycat/b/h/n;

    return-void
.end method

.method constructor <init>(J)V
    .locals 1

    .prologue
    .line 1572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1573
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/b/h/n;->a:Z

    .line 1574
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/h/n;->b:Lcom/sleepycat/b/n/z;

    .line 1575
    iput-wide p1, p0, Lcom/sleepycat/b/h/n;->c:J

    .line 1576
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/b/n/z;)V
    .locals 2

    .prologue
    .line 1565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1566
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/b/h/n;->a:Z

    .line 1567
    iput-object p1, p0, Lcom/sleepycat/b/h/n;->b:Lcom/sleepycat/b/n/z;

    .line 1568
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/b/h/n;->c:J

    .line 1569
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2

    .prologue
    .line 1578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1579
    iput-boolean p1, p0, Lcom/sleepycat/b/h/n;->a:Z

    .line 1580
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/h/n;->b:Lcom/sleepycat/b/n/z;

    .line 1581
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/b/h/n;->c:J

    .line 1582
    return-void
.end method
