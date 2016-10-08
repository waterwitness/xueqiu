.class final Lcom/d/a/b/n$1;
.super Ljava/lang/Object;
.source "LoadAndDisplayImageTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/d/a/b/n;
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/d/a/b/n;


# direct methods
.method constructor <init>(Lcom/d/a/b/n;II)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/d/a/b/n$1;->c:Lcom/d/a/b/n;

    iput p2, p0, Lcom/d/a/b/n$1;->a:I

    iput p3, p0, Lcom/d/a/b/n$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/d/a/b/n$1;->c:Lcom/d/a/b/n;

    iget-object v0, v0, Lcom/d/a/b/n;->c:Lcom/d/a/b/e/a;

    invoke-interface {v0}, Lcom/d/a/b/e/a;->d()Landroid/view/View;

    .line 335
    return-void
.end method
