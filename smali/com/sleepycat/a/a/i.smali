.class public final Lcom/sleepycat/a/a/i;
.super Lcom/sleepycat/a/a/k;
.source "StringBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/a/a/k",
        "<",
        "Ljava/lang/String;",
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

.method private static a(Ljava/lang/String;)Lcom/sleepycat/a/a/m;
    .locals 2

    .prologue
    .line 79
    if-nez p0, :cond_0

    const/4 v0, 0x1

    .line 81
    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 82
    new-instance v1, Lcom/sleepycat/a/a/m;

    new-array v0, v0, [B

    invoke-direct {v1, v0}, Lcom/sleepycat/a/a/m;-><init>([B)V

    return-object v1

    .line 79
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/c/f;->a([C)I

    move-result v0

    goto :goto_0
.end method

.method public static a(Lcom/sleepycat/b/m;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    invoke-static {p0}, Lcom/sleepycat/a/a/i;->entryToInput(Lcom/sleepycat/b/m;)Lcom/sleepycat/a/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/a/a/l;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/sleepycat/b/m;)V
    .locals 1

    .prologue
    .line 70
    invoke-static {p0}, Lcom/sleepycat/a/a/i;->a(Ljava/lang/String;)Lcom/sleepycat/a/a/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sleepycat/a/a/m;->a(Ljava/lang/String;)Lcom/sleepycat/a/a/m;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sleepycat/a/a/i;->outputToEntry(Lcom/sleepycat/a/a/m;Lcom/sleepycat/b/m;)V

    .line 71
    return-void
.end method


# virtual methods
.method public final synthetic entryToObject(Lcom/sleepycat/a/a/l;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    .line 2034
    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->a()Ljava/lang/String;

    move-result-object v0

    .line 29
    return-object v0
.end method

.method protected final synthetic getTupleOutput(Ljava/lang/Object;)Lcom/sleepycat/a/a/m;
    .locals 1

    .prologue
    .line 29
    check-cast p1, Ljava/lang/String;

    .line 2046
    invoke-static {p1}, Lcom/sleepycat/a/a/i;->a(Ljava/lang/String;)Lcom/sleepycat/a/a/m;

    move-result-object v0

    .line 29
    return-object v0
.end method

.method public final synthetic objectToEntry(Ljava/lang/Object;Lcom/sleepycat/a/a/m;)V
    .locals 0

    .prologue
    .line 29
    check-cast p1, Ljava/lang/String;

    .line 1040
    invoke-virtual {p2, p1}, Lcom/sleepycat/a/a/m;->a(Ljava/lang/String;)Lcom/sleepycat/a/a/m;

    .line 29
    return-void
.end method
