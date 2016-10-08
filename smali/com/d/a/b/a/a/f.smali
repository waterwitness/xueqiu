.class final Lcom/d/a/b/a/a/f;
.super Lcom/d/a/b/a/a/e;
.source "LinkedBlockingDeque.java"


# instance fields
.field final synthetic d:Lcom/d/a/b/a/a/d;


# direct methods
.method private constructor <init>(Lcom/d/a/b/a/a/d;)V
    .locals 0

    .prologue
    .line 1113
    iput-object p1, p0, Lcom/d/a/b/a/a/f;->d:Lcom/d/a/b/a/a/d;

    invoke-direct {p0, p1}, Lcom/d/a/b/a/a/e;-><init>(Lcom/d/a/b/a/a/d;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/d/a/b/a/a/d;B)V
    .locals 0

    .prologue
    .line 1113
    invoke-direct {p0, p1}, Lcom/d/a/b/a/a/f;-><init>(Lcom/d/a/b/a/a/d;)V

    return-void
.end method


# virtual methods
.method final a()Lcom/d/a/b/a/a/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/d/a/b/a/a/g",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/d/a/b/a/a/f;->d:Lcom/d/a/b/a/a/d;

    iget-object v0, v0, Lcom/d/a/b/a/a/d;->a:Lcom/d/a/b/a/a/g;

    return-object v0
.end method

.method final a(Lcom/d/a/b/a/a/g;)Lcom/d/a/b/a/a/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/d/a/b/a/a/g",
            "<TE;>;)",
            "Lcom/d/a/b/a/a/g",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1115
    iget-object v0, p1, Lcom/d/a/b/a/a/g;->c:Lcom/d/a/b/a/a/g;

    return-object v0
.end method
