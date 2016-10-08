.class final Landroid/support/v7/internal/widget/t;
.super Ljava/lang/Object;
.source "AdapterViewICS.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/o;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/o;)V
    .locals 0

    .prologue
    .line 853
    iput-object p1, p0, Landroid/support/v7/internal/widget/t;->a:Landroid/support/v7/internal/widget/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/o;B)V
    .locals 0

    .prologue
    .line 853
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/t;-><init>(Landroid/support/v7/internal/widget/o;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->a:Landroid/support/v7/internal/widget/o;

    iget-boolean v0, v0, Landroid/support/v7/internal/widget/o;->v:Z

    if-eqz v0, :cond_1

    .line 859
    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->a:Landroid/support/v7/internal/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/o;->c()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->a:Landroid/support/v7/internal/widget/o;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/o;->post(Ljava/lang/Runnable;)Z

    .line 865
    :cond_0
    :goto_0
    return-void

    .line 863
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->a:Landroid/support/v7/internal/widget/o;

    invoke-static {v0}, Landroid/support/v7/internal/widget/o;->b(Landroid/support/v7/internal/widget/o;)V

    goto :goto_0
.end method
