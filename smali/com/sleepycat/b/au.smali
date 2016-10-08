.class public abstract Lcom/sleepycat/b/au;
.super Lcom/sleepycat/b/n;
.source "OperationFailureException.java"


# static fields
.field static final synthetic d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 185
    const-class v0, Lcom/sleepycat/b/au;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/au;->d:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sleepycat/b/n/q;ZLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 197
    invoke-direct {p0, p3, p4}, Lcom/sleepycat/b/n;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    if-eqz p2, :cond_1

    .line 199
    sget-boolean v0, Lcom/sleepycat/b/au;->d:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 200
    :cond_0
    invoke-virtual {p1, p0}, Lcom/sleepycat/b/n/q;->a(Lcom/sleepycat/b/au;)V

    .line 202
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sleepycat/b/au;)V
    .locals 0

    .prologue
    .line 220
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/n;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 221
    return-void
.end method


# virtual methods
.method public abstract b(Ljava/lang/String;)Lcom/sleepycat/b/au;
.end method
