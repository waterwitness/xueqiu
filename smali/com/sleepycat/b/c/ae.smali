.class final Lcom/sleepycat/b/c/ae;
.super Ljava/lang/RuntimeException;
.source "EnvironmentImpl.java"


# instance fields
.field final a:Lcom/sleepycat/b/az;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/az;)V
    .locals 1

    .prologue
    .line 3111
    invoke-virtual {p1}, Lcom/sleepycat/b/az;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 3112
    iput-object p1, p0, Lcom/sleepycat/b/c/ae;->a:Lcom/sleepycat/b/az;

    .line 3113
    return-void
.end method
