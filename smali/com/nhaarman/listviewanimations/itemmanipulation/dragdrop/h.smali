.class final Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/h;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DragAndDropHandler.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

.field private final b:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;Landroid/view/View;)V
    .locals 0
    .param p2    # Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 761
    iput-object p1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/h;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 762
    iput-object p2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/h;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;

    .line 763
    iput-object p3, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/h;->c:Landroid/view/View;

    .line 764
    return-void
.end method

.method synthetic constructor <init>(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;Landroid/view/View;B)V
    .locals 0

    .prologue
    .line 753
    invoke-direct {p0, p1, p2, p3}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/h;-><init>(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 779
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/h;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 781
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/h;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-static {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->g(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;

    .line 782
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/h;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->a(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;Landroid/view/View;)Landroid/view/View;

    .line 783
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/h;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-static {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->h(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)J

    .line 784
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/h;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-static {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->i(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)I

    .line 786
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/h;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-static {v0, v2}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->a(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;Z)Z

    .line 787
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 768
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/h;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->a(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;Z)Z

    .line 769
    return-void
.end method

.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 773
    iget-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/h;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;->a(I)V

    .line 774
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/h;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-static {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->b(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;->j()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->postInvalidate()V

    .line 775
    return-void
.end method
