.class final Lcom/a/a/f;
.super Ljava/lang/Object;
.source "CacheManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/a/a/c/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/e;


# direct methods
.method constructor <init>(Lcom/a/a/e;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/a/a/f;->a:Lcom/a/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 143
    check-cast p1, Lcom/a/a/c/a;

    check-cast p2, Lcom/a/a/c/a;

    .line 2051
    iget v0, p1, Lcom/a/a/c/a;->e:I

    .line 3051
    iget v1, p2, Lcom/a/a/c/a;->e:I

    .line 1146
    if-ne v0, v1, :cond_0

    .line 1147
    const/4 v0, 0x0

    .line 1149
    :goto_0
    return v0

    .line 4051
    :cond_0
    iget v0, p1, Lcom/a/a/c/a;->e:I

    .line 5051
    iget v1, p2, Lcom/a/a/c/a;->e:I

    .line 1149
    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 143
    goto :goto_0
.end method
