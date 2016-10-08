.class final Lcom/sleepycat/b/i$1;
.super Ljava/lang/Object;
.source "Database.java"

# interfaces
.implements Lcom/sleepycat/b/be;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/b/i;->a()Lcom/sleepycat/b/be;
.end annotation


# instance fields
.field final synthetic a:Lcom/sleepycat/b/i;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/i;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/sleepycat/b/i$1;->a:Lcom/sleepycat/b/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/sleepycat/b/i$1;->a:Lcom/sleepycat/b/i;

    iget-object v0, v0, Lcom/sleepycat/b/i;->i:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final b()Lcom/sleepycat/b/i;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/sleepycat/b/i$1;->a:Lcom/sleepycat/b/i;

    return-object v0
.end method

.method public final c()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/sleepycat/b/bi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lcom/sleepycat/b/i$1;->a:Lcom/sleepycat/b/i;

    iget-object v0, v0, Lcom/sleepycat/b/i;->i:Ljava/util/Collection;

    return-object v0
.end method
