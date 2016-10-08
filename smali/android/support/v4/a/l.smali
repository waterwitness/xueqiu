.class final Landroid/support/v4/a/l;
.super Landroid/support/v4/a/p;
.source "FragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/a/p",
        "<",
        "Landroid/support/v4/a/k;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/a/k;


# direct methods
.method public constructor <init>(Landroid/support/v4/a/k;)V
    .locals 0

    .prologue
    .line 876
    iput-object p1, p0, Landroid/support/v4/a/l;->a:Landroid/support/v4/a/k;

    .line 877
    invoke-direct {p0, p1}, Landroid/support/v4/a/p;-><init>(Landroid/support/v4/a/k;)V

    .line 878
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 942
    iget-object v0, p0, Landroid/support/v4/a/l;->a:Landroid/support/v4/a/k;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/support/v4/a/i;Landroid/content/Intent;I)V
    .locals 1

    .prologue
    .line 907
    iget-object v0, p0, Landroid/support/v4/a/l;->a:Landroid/support/v4/a/k;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/a/k;->a(Landroid/support/v4/a/i;Landroid/content/Intent;I)V

    .line 908
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 882
    iget-object v0, p0, Landroid/support/v4/a/l;->a:Landroid/support/v4/a/k;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/support/v4/a/k;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 883
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 947
    iget-object v0, p0, Landroid/support/v4/a/l;->a:Landroid/support/v4/a/k;

    invoke-virtual {v0}, Landroid/support/v4/a/k;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 948
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 887
    iget-object v0, p0, Landroid/support/v4/a/l;->a:Landroid/support/v4/a/k;

    invoke-virtual {v0}, Landroid/support/v4/a/k;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 892
    iget-object v0, p0, Landroid/support/v4/a/l;->a:Landroid/support/v4/a/k;

    invoke-virtual {v0}, Landroid/support/v4/a/k;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/a/l;->a:Landroid/support/v4/a/k;

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 902
    iget-object v0, p0, Landroid/support/v4/a/l;->a:Landroid/support/v4/a/k;

    invoke-virtual {v0}, Landroid/support/v4/a/k;->b()V

    .line 903
    return-void
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, Landroid/support/v4/a/l;->a:Landroid/support/v4/a/k;

    invoke-virtual {v0}, Landroid/support/v4/a/k;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 930
    iget-object v0, p0, Landroid/support/v4/a/l;->a:Landroid/support/v4/a/k;

    invoke-virtual {v0}, Landroid/support/v4/a/k;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 931
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_0
.end method
