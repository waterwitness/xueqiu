.class final Lcom/sleepycat/b/j/h;
.super Ljava/lang/Object;
.source "StatUtils.java"


# static fields
.field private static final a:Ljava/text/DateFormat;

.field private static final b:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lcom/sleepycat/b/p/at;->a()Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/b/j/h;->a:Ljava/text/DateFormat;

    .line 18
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/sleepycat/b/j/h;->b:Ljava/util/Date;

    return-void
.end method

.method public static declared-synchronized a(J)Ljava/lang/String;
    .locals 4

    .prologue
    .line 22
    const-class v1, Lcom/sleepycat/b/j/h;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sleepycat/b/j/h;->b:Ljava/util/Date;

    invoke-virtual {v0, p0, p1}, Ljava/util/Date;->setTime(J)V

    .line 23
    sget-object v0, Lcom/sleepycat/b/j/h;->a:Ljava/text/DateFormat;

    sget-object v2, Lcom/sleepycat/b/j/h;->b:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
