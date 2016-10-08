.class public final Lcom/sleepycat/b/c/p$5;
.super Ljava/lang/Object;
.source "DbTree.java"

# interfaces
.implements Lcom/sleepycat/b/c/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/b/c/p;
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/sleepycat/b/c/p;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/c/p;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1843
    iput-object p1, p0, Lcom/sleepycat/b/c/p$5;->b:Lcom/sleepycat/b/c/p;

    iput-object p2, p0, Lcom/sleepycat/b/c/p$5;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/c/c;Lcom/sleepycat/b/m;)Z
    .locals 2

    .prologue
    .line 1851
    .line 2197
    iget-object v0, p2, Lcom/sleepycat/b/m;->a:[B

    .line 1851
    invoke-static {v0}, Lcom/sleepycat/d/b;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 1852
    invoke-static {v0}, Lcom/sleepycat/b/c/p;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1853
    iget-object v1, p0, Lcom/sleepycat/b/c/p$5;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1855
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
