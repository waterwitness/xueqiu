.class public Lcom/sleepycat/b/i/c/ba;
.super Ljava/lang/Object;
.source "TextProtocol.java"

# interfaces
.implements Lcom/sleepycat/b/i/c/bc;


# instance fields
.field public d:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 999
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1001
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1002
    iput-object p1, p0, Lcom/sleepycat/b/i/c/ba;->d:Ljava/lang/String;

    .line 1003
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/sleepycat/b/i/c/ba;->d:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1021
    if-ne p0, p1, :cond_1

    .line 1039
    :cond_0
    :goto_0
    return v0

    .line 1024
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 1025
    goto :goto_0

    .line 1027
    :cond_2
    instance-of v2, p1, Lcom/sleepycat/b/i/c/ba;

    if-nez v2, :cond_3

    move v0, v1

    .line 1028
    goto :goto_0

    .line 1031
    :cond_3
    check-cast p1, Lcom/sleepycat/b/i/c/ba;

    .line 1032
    iget-object v2, p0, Lcom/sleepycat/b/i/c/ba;->d:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 1033
    iget-object v2, p1, Lcom/sleepycat/b/i/c/ba;->d:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 1034
    goto :goto_0

    .line 1036
    :cond_4
    iget-object v2, p0, Lcom/sleepycat/b/i/c/ba;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/sleepycat/b/i/c/ba;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 1037
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/sleepycat/b/i/c/ba;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/ba;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method
