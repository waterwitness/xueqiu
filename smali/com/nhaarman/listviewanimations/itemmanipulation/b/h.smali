.class final Lcom/nhaarman/listviewanimations/itemmanipulation/b/h;
.super Lcom/c/a/c;
.source "SwipeTouchListener.java"


# instance fields
.field final synthetic a:Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;

.field private final b:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:I


# direct methods
.method private constructor <init>(Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;Landroid/view/View;I)V
    .locals 0
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 720
    iput-object p1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/h;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;

    invoke-direct {p0}, Lcom/c/a/c;-><init>()V

    .line 721
    iput-object p2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/h;->b:Landroid/view/View;

    .line 722
    iput p3, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/h;->c:I

    .line 723
    return-void
.end method

.method synthetic constructor <init>(Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;Landroid/view/View;IB)V
    .locals 0

    .prologue
    .line 713
    invoke-direct {p0, p1, p2, p3}, Lcom/nhaarman/listviewanimations/itemmanipulation/b/h;-><init>(Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/c/a/a;)V
    .locals 1
    .param p1    # Lcom/c/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 727
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/h;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;

    invoke-static {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->a(Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;)I

    .line 728
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/h;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;

    invoke-virtual {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->a()V

    .line 729
    return-void
.end method
