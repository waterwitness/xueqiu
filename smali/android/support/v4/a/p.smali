.class public abstract Landroid/support/v4/a/p;
.super Landroid/support/v4/a/n;
.source "FragmentHostCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/a/n;"
    }
.end annotation


# instance fields
.field final b:Landroid/app/Activity;

.field final c:Landroid/content/Context;

.field final d:Landroid/os/Handler;

.field final e:I

.field final f:Landroid/support/v4/a/r;

.field g:Landroid/support/v4/e/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/e/n",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/a/ag;",
            ">;"
        }
    .end annotation
.end field

.field public h:Landroid/support/v4/a/ai;

.field public i:Z

.field public j:Z


# direct methods
.method private constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/support/v4/a/n;-><init>()V

    .line 44
    new-instance v0, Landroid/support/v4/a/r;

    invoke-direct {v0}, Landroid/support/v4/a/r;-><init>()V

    iput-object v0, p0, Landroid/support/v4/a/p;->f:Landroid/support/v4/a/r;

    .line 60
    iput-object p1, p0, Landroid/support/v4/a/p;->b:Landroid/app/Activity;

    .line 61
    iput-object p2, p0, Landroid/support/v4/a/p;->c:Landroid/content/Context;

    .line 62
    iput-object p3, p0, Landroid/support/v4/a/p;->d:Landroid/os/Handler;

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/a/p;->e:I

    .line 64
    return-void
.end method

.method constructor <init>(Landroid/support/v4/a/k;)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p1, Landroid/support/v4/a/k;->a:Landroid/os/Handler;

    invoke-direct {p0, p1, p1, v0}, Landroid/support/v4/a/p;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;)V

    .line 56
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ZZ)Landroid/support/v4/a/ai;
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Landroid/support/v4/a/p;->g:Landroid/support/v4/e/n;

    if-nez v0, :cond_0

    .line 267
    new-instance v0, Landroid/support/v4/e/n;

    invoke-direct {v0}, Landroid/support/v4/e/n;-><init>()V

    iput-object v0, p0, Landroid/support/v4/a/p;->g:Landroid/support/v4/e/n;

    .line 269
    :cond_0
    iget-object v0, p0, Landroid/support/v4/a/p;->g:Landroid/support/v4/e/n;

    invoke-virtual {v0, p1}, Landroid/support/v4/e/n;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/ai;

    .line 270
    if-nez v0, :cond_2

    .line 271
    if-eqz p3, :cond_1

    .line 272
    new-instance v0, Landroid/support/v4/a/ai;

    invoke-direct {v0, p1, p0, p2}, Landroid/support/v4/a/ai;-><init>(Ljava/lang/String;Landroid/support/v4/a/p;Z)V

    .line 273
    iget-object v1, p0, Landroid/support/v4/a/p;->g:Landroid/support/v4/e/n;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/e/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :cond_1
    :goto_0
    return-object v0

    .line 1533
    :cond_2
    iput-object p0, v0, Landroid/support/v4/a/ai;->h:Landroid/support/v4/a/p;

    goto :goto_0
.end method

.method public a(I)Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 153
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/support/v4/a/i;Landroid/content/Intent;I)V
    .locals 2

    .prologue
    .line 113
    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Starting activity with a requestCode requires a FragmentActivity host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    iget-object v0, p0, Landroid/support/v4/a/p;->c:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 118
    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Landroid/support/v4/a/p;->g:Landroid/support/v4/e/n;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Landroid/support/v4/a/p;->g:Landroid/support/v4/e/n;

    invoke-virtual {v0, p1}, Landroid/support/v4/e/n;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/ai;

    .line 190
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/support/v4/a/ai;->f:Z

    if-nez v1, :cond_0

    .line 191
    invoke-virtual {v0}, Landroid/support/v4/a/ai;->g()V

    .line 192
    iget-object v0, p0, Landroid/support/v4/a/p;->g:Landroid/support/v4/e/n;

    invoke-virtual {v0, p1}, Landroid/support/v4/e/n;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x1

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public c()Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Landroid/support/v4/a/p;->c:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public d()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Landroid/support/v4/a/p;->e:I

    return v0
.end method

.method final g()Landroid/support/v4/e/n;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/e/n",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/a/ag;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 282
    .line 283
    iget-object v0, p0, Landroid/support/v4/a/p;->g:Landroid/support/v4/e/n;

    if-eqz v0, :cond_2

    .line 286
    iget-object v0, p0, Landroid/support/v4/a/p;->g:Landroid/support/v4/e/n;

    invoke-virtual {v0}, Landroid/support/v4/e/n;->size()I

    move-result v3

    .line 287
    new-array v4, v3, [Landroid/support/v4/a/ai;

    .line 288
    add-int/lit8 v0, v3, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_0

    .line 289
    iget-object v0, p0, Landroid/support/v4/a/p;->g:Landroid/support/v4/e/n;

    invoke-virtual {v0, v2}, Landroid/support/v4/e/n;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/ai;

    aput-object v0, v4, v2

    .line 288
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 291
    :goto_1
    if-ge v1, v3, :cond_3

    .line 292
    aget-object v2, v4, v1

    .line 293
    iget-boolean v5, v2, Landroid/support/v4/a/ai;->f:Z

    if-eqz v5, :cond_1

    .line 294
    const/4 v0, 0x1

    .line 291
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 296
    :cond_1
    invoke-virtual {v2}, Landroid/support/v4/a/ai;->g()V

    .line 297
    iget-object v5, p0, Landroid/support/v4/a/p;->g:Landroid/support/v4/e/n;

    iget-object v2, v2, Landroid/support/v4/a/ai;->d:Ljava/lang/String;

    invoke-virtual {v5, v2}, Landroid/support/v4/e/n;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    move v0, v1

    .line 302
    :cond_3
    if-eqz v0, :cond_4

    .line 303
    iget-object v0, p0, Landroid/support/v4/a/p;->g:Landroid/support/v4/e/n;

    .line 305
    :goto_3
    return-object v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method
