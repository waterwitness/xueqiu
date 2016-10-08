.class final Lcom/sleepycat/b/c/p$b;
.super Ljava/lang/Object;
.source "DbTree.java"

# interfaces
.implements Lcom/sleepycat/b/c/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/b/c/p;->c()Ljava/util/Map;
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/sleepycat/b/c/p;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/c/p;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1813
    iput-object p1, p0, Lcom/sleepycat/b/c/p$b;->b:Lcom/sleepycat/b/c/p;

    iput-object p2, p0, Lcom/sleepycat/b/c/p$b;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/c/c;Lcom/sleepycat/b/m;)Z
    .locals 3

    .prologue
    .line 1820
    sget-object v0, Lcom/sleepycat/b/n/o;->f:Lcom/sleepycat/b/n/o;

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/n/o;)Lcom/sleepycat/b/l/y;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/ab;

    .line 2062
    iget-object v0, v0, Lcom/sleepycat/b/l/ab;->a:Lcom/sleepycat/b/c/h;

    .line 1822
    iget-object v1, p0, Lcom/sleepycat/b/c/p$b;->a:Ljava/util/Map;

    .line 2197
    iget-object v2, p2, Lcom/sleepycat/b/m;->a:[B

    .line 1822
    invoke-static {v2}, Lcom/sleepycat/d/b;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1823
    const/4 v0, 0x1

    return v0
.end method
