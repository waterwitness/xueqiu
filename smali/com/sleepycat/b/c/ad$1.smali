.class final Lcom/sleepycat/b/c/ad$1;
.super Ljava/lang/Object;
.source "EnvironmentImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/b/c/ad;->a([Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/aw;)Lcom/sleepycat/b/ay;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sleepycat/b/c/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/sleepycat/b/c/ad;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/c/ad;)V
    .locals 0

    .prologue
    .line 3163
    iput-object p1, p0, Lcom/sleepycat/b/c/ad$1;->a:Lcom/sleepycat/b/c/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 3163
    check-cast p1, Lcom/sleepycat/b/c/i;

    check-cast p2, Lcom/sleepycat/b/c/i;

    .line 4496
    iget-object v0, p1, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 5496
    iget-object v1, p2, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 4168
    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/h;->a(Lcom/sleepycat/b/c/h;)I

    move-result v0

    .line 3163
    return v0
.end method
