.class public final Lcom/sleepycat/b/p/ae;
.super Ljava/lang/Exception;
.source "RelatchRequiredException.java"


# static fields
.field public static a:Lcom/sleepycat/b/p/ae;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/sleepycat/b/p/ae;

    invoke-direct {v0}, Lcom/sleepycat/b/p/ae;-><init>()V

    sput-object v0, Lcom/sleepycat/b/p/ae;->a:Lcom/sleepycat/b/p/ae;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public final declared-synchronized fillInStackTrace()Ljava/lang/Throwable;
    .locals 0

    .prologue
    .line 25
    monitor-enter p0

    monitor-exit p0

    return-object p0
.end method
