.class final Landroid/support/v4/a/b$3;
.super Ljava/lang/Object;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/a/b;
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/support/v4/a/d;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/Object;

.field final synthetic e:Landroid/support/v4/a/b;


# direct methods
.method constructor <init>(Landroid/support/v4/a/b;Landroid/view/View;Landroid/support/v4/a/d;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 1360
    iput-object p1, p0, Landroid/support/v4/a/b$3;->e:Landroid/support/v4/a/b;

    iput-object p2, p0, Landroid/support/v4/a/b$3;->a:Landroid/view/View;

    iput-object p3, p0, Landroid/support/v4/a/b$3;->b:Landroid/support/v4/a/d;

    iput p4, p0, Landroid/support/v4/a/b$3;->c:I

    iput-object p5, p0, Landroid/support/v4/a/b$3;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 4

    .prologue
    .line 1362
    iget-object v0, p0, Landroid/support/v4/a/b$3;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1363
    iget-object v0, p0, Landroid/support/v4/a/b$3;->e:Landroid/support/v4/a/b;

    iget-object v1, p0, Landroid/support/v4/a/b$3;->b:Landroid/support/v4/a/d;

    iget v2, p0, Landroid/support/v4/a/b$3;->c:I

    iget-object v3, p0, Landroid/support/v4/a/b$3;->d:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/a/b;->a(Landroid/support/v4/a/b;Landroid/support/v4/a/d;ILjava/lang/Object;)V

    .line 1364
    const/4 v0, 0x1

    return v0
.end method
