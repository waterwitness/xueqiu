.class final Lcom/sleepycat/b/l/x$3;
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
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/b/l/x;-><init>(Ljava/lang/String;B)V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/StringBuilder;[B)V
    .locals 1

    .prologue
    .line 55
    invoke-static {p2}, Lcom/sleepycat/d/b;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    return-void
.end method
