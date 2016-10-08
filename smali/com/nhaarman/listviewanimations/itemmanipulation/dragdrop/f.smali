.class final Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/f;
.super Ljava/lang/Object;
.source "DragAndDropHandler.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/e;

.field private final c:J

.field private final d:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 563
    const-class v0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/f;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/e;JF)V
    .locals 0

    .prologue
    .line 569
    iput-object p1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/f;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 570
    iput-wide p2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/f;->c:J

    .line 571
    iput p4, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/f;->d:F

    .line 572
    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 4

    .prologue
    .line 576
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/f;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/e;

    iget-object v0, v0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/e;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-static {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->b(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;->j()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 578
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/f;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/e;

    iget-object v0, v0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/e;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    iget-wide v2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/f;->c:J

    invoke-static {v0, v2, v3}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->a(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;J)Landroid/view/View;

    move-result-object v0

    .line 579
    if-eqz v0, :cond_0

    .line 580
    iget v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/f;->d:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 581
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 584
    :cond_0
    sget-boolean v0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/f;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/f;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/e;

    iget-object v0, v0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/e;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-static {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->a(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 585
    :cond_1
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/f;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/e;

    iget-object v0, v0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/e;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-static {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->a(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 586
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/f;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/e;

    iget-object v0, v0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/e;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    iget-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/f;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/e;

    iget-object v1, v1, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/e;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    iget-object v2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/f;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/e;

    iget-object v2, v2, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/e;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-static {v2}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->c(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->a(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;J)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->a(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;Landroid/view/View;)Landroid/view/View;

    .line 587
    sget-boolean v0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/f;->a:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/f;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/e;

    iget-object v0, v0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/e;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-static {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->a(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 588
    :cond_2
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/f;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/e;

    iget-object v0, v0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/e;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-static {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->a(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 589
    const/4 v0, 0x1

    return v0
.end method
