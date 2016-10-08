.class public final Lcom/sleepycat/a/a/c;
.super Lcom/sleepycat/a/a/k;
.source "CharacterBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/a/a/k",
        "<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/sleepycat/a/a/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic entryToObject(Lcom/sleepycat/a/a/l;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    .line 2126
    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->f()I

    move-result v0

    int-to-char v0, v0

    .line 2036
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 29
    return-object v0
.end method

.method protected final synthetic getTupleOutput(Ljava/lang/Object;)Lcom/sleepycat/a/a/m;
    .locals 2

    .prologue
    .line 3081
    new-instance v0, Lcom/sleepycat/a/a/m;

    const/4 v1, 0x2

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/sleepycat/a/a/m;-><init>([B)V

    .line 29
    return-object v0
.end method

.method public final synthetic objectToEntry(Ljava/lang/Object;Lcom/sleepycat/a/a/m;)V
    .locals 2

    .prologue
    .line 29
    check-cast p1, Ljava/lang/Character;

    .line 1042
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    .line 1136
    ushr-int/lit8 v1, v0, 0x8

    int-to-byte v1, v1

    invoke-virtual {p2, v1}, Lcom/sleepycat/a/a/m;->d(I)V

    .line 1137
    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Lcom/sleepycat/a/a/m;->d(I)V

    .line 29
    return-void
.end method
