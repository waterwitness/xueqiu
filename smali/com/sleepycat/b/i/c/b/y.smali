.class final Lcom/sleepycat/b/i/c/b/y;
.super Lcom/sleepycat/b/i/c/b/x;
.source "NameIdPair.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/i/c/b/x;-><init>(Ljava/lang/String;I)V

    .line 162
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 167
    const-string v0, "Read only NameIdPair"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method
