.class final Lcom/sleepycat/b/c/bh$3;
.super Lcom/sleepycat/b/c/bi;
.source "TriggerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/b/c/bh;->a(Lcom/sleepycat/b/n/q;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/b/c/bi",
        "<",
        "Ljava/lang/String;",
        "Lcom/sleepycat/b/m/d;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 395
    invoke-direct {p0, p1}, Lcom/sleepycat/b/c/bi;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 395
    check-cast p1, Lcom/sleepycat/b/m/d;

    .line 1398
    invoke-interface {p1}, Lcom/sleepycat/b/m/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 395
    return-object v0
.end method
