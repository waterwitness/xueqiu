.class public final Lcom/c/a/f;
.super Ljava/lang/Object;
.source "AnimatorSet.java"


# instance fields
.field a:Lcom/c/a/i;

.field final synthetic b:Lcom/c/a/d;


# direct methods
.method constructor <init>(Lcom/c/a/d;Lcom/c/a/a;)V
    .locals 2

    .prologue
    .line 1027
    iput-object p1, p0, Lcom/c/a/f;->b:Lcom/c/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1028
    invoke-static {p1}, Lcom/c/a/d;->b(Lcom/c/a/d;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/i;

    iput-object v0, p0, Lcom/c/a/f;->a:Lcom/c/a/i;

    .line 1029
    iget-object v0, p0, Lcom/c/a/f;->a:Lcom/c/a/i;

    if-nez v0, :cond_0

    .line 1030
    new-instance v0, Lcom/c/a/i;

    invoke-direct {v0, p2}, Lcom/c/a/i;-><init>(Lcom/c/a/a;)V

    iput-object v0, p0, Lcom/c/a/f;->a:Lcom/c/a/i;

    .line 1031
    invoke-static {p1}, Lcom/c/a/d;->b(Lcom/c/a/d;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/c/a/f;->a:Lcom/c/a/i;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    invoke-static {p1}, Lcom/c/a/d;->e(Lcom/c/a/d;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/c/a/f;->a:Lcom/c/a/i;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1034
    :cond_0
    return-void
.end method
