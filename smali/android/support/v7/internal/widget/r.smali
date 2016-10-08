.class final Landroid/support/v7/internal/widget/r;
.super Ljava/lang/Object;
.source "AdapterViewICS.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/o;

.field private final b:Landroid/support/v7/internal/widget/q;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/widget/o;Landroid/support/v7/internal/widget/q;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Landroid/support/v7/internal/widget/r;->a:Landroid/support/v7/internal/widget/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-object p2, p0, Landroid/support/v7/internal/widget/r;->b:Landroid/support/v7/internal/widget/q;

    .line 267
    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, Landroid/support/v7/internal/widget/r;->b:Landroid/support/v7/internal/widget/q;

    invoke-interface {v0, p2, p3}, Landroid/support/v7/internal/widget/q;->a(Landroid/view/View;I)V

    .line 272
    return-void
.end method
