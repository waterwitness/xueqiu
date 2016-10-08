.class final Landroid/support/v4/a/ad$3;
.super Landroid/transition/Transition$EpicenterCallback;
.source "FragmentTransitionCompat21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/a/ad;
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/a/ae;

.field private b:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/support/v4/a/ae;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Landroid/support/v4/a/ad$3;->a:Landroid/support/v4/a/ae;

    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Landroid/support/v4/a/ad$3;->b:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/a/ad$3;->a:Landroid/support/v4/a/ae;

    iget-object v0, v0, Landroid/support/v4/a/ae;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Landroid/support/v4/a/ad$3;->a:Landroid/support/v4/a/ae;

    iget-object v0, v0, Landroid/support/v4/a/ae;->a:Landroid/view/View;

    .line 1031
    invoke-static {v0}, Landroid/support/v4/a/ad;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 288
    iput-object v0, p0, Landroid/support/v4/a/ad$3;->b:Landroid/graphics/Rect;

    .line 290
    :cond_0
    iget-object v0, p0, Landroid/support/v4/a/ad$3;->b:Landroid/graphics/Rect;

    return-object v0
.end method
