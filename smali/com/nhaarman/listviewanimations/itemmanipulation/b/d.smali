.class final Lcom/nhaarman/listviewanimations/itemmanipulation/b/d;
.super Ljava/lang/Object;
.source "SwipeDismissTouchListener.java"

# interfaces
.implements Lcom/c/a/z;


# instance fields
.field private final a:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput-object p1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/d;->a:Landroid/view/View;

    .line 227
    return-void
.end method


# virtual methods
.method public final a(Lcom/c/a/x;)V
    .locals 2
    .param p1    # Lcom/c/a/x;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 231
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/d;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 232
    invoke-virtual {p1}, Lcom/c/a/x;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 233
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/d;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    return-void
.end method
