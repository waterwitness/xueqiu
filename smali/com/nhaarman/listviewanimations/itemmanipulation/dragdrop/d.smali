.class final Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/d;
.super Ljava/lang/Object;
.source "DragAndDropHandler.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic a:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/c;

.field private final b:Landroid/view/View;

.field private final c:J

.field private final d:F


# direct methods
.method constructor <init>(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/c;Landroid/view/View;JF)V
    .locals 1

    .prologue
    .line 526
    iput-object p1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/d;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    iput-object p2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/d;->b:Landroid/view/View;

    .line 528
    iput-wide p3, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/d;->c:J

    .line 529
    iput p5, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/d;->d:F

    .line 530
    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 4

    .prologue
    .line 534
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/d;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/c;

    iget-object v0, v0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/c;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-static {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->b(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;->j()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 536
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/d;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/c;

    iget-object v0, v0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/c;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    iget-wide v2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/d;->c:J

    invoke-static {v0, v2, v3}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->a(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;J)Landroid/view/View;

    move-result-object v0

    .line 537
    if-eqz v0, :cond_0

    .line 538
    iget v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/d;->d:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 539
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/d;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 544
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/d;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/c;

    iget-object v0, v0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/c;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-static {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->a(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 545
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/d;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/c;

    iget-object v0, v0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/c;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-static {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->a(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 547
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
