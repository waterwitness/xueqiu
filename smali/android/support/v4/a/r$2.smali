.class final Landroid/support/v4/a/r$2;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/a/r;->b(I)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Landroid/support/v4/a/r;


# direct methods
.method constructor <init>(Landroid/support/v4/a/r;I)V
    .locals 1

    .prologue
    .line 610
    iput-object p1, p0, Landroid/support/v4/a/r$2;->c:Landroid/support/v4/a/r;

    iput p2, p0, Landroid/support/v4/a/r$2;->a:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/a/r$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 612
    iget-object v0, p0, Landroid/support/v4/a/r$2;->c:Landroid/support/v4/a/r;

    iget-object v1, p0, Landroid/support/v4/a/r$2;->c:Landroid/support/v4/a/r;

    iget-object v1, v1, Landroid/support/v4/a/r;->o:Landroid/support/v4/a/p;

    iget v1, p0, Landroid/support/v4/a/r$2;->a:I

    iget v2, p0, Landroid/support/v4/a/r$2;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/r;->a(II)Z

    .line 613
    return-void
.end method
