.class final Lcom/sleepycat/b/l/x$4;
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
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/b/l/x;-><init>(Ljava/lang/String;B)V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/StringBuilder;[B)V
    .locals 3

    .prologue
    .line 62
    array-length v0, p2

    .line 63
    const-string v1, "["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string v0, " byte]"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    return-void

    .line 63
    :cond_0
    const-string v0, " bytes]"

    goto :goto_0
.end method
