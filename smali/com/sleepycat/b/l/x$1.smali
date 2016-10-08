.class final Lcom/sleepycat/b/l/x$1;
.super Lcom/sleepycat/b/l/x;
.source "Key.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/b/l/x;
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/b/l/x;-><init>(Ljava/lang/String;B)V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/StringBuilder;[B)V
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 37
    aget-byte v1, p2, v0

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method
