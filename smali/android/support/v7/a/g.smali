.class public abstract Landroid/support/v7/a/g;
.super Ljava/lang/Object;
.source "ActionBarActivityDelegate.java"


# instance fields
.field final a:Landroid/support/v7/a/f;

.field b:Z

.field c:Z

.field private d:Landroid/support/v7/a/a;

.field private e:Landroid/view/MenuInflater;

.field private f:Z


# direct methods
.method constructor <init>(Landroid/support/v7/a/f;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/f;

    .line 74
    return-void
.end method


# virtual methods
.method abstract a()Landroid/support/v7/a/a;
.end method

.method abstract a(I)V
.end method

.method a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 104
    iget-object v0, p0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/f;

    sget-object v1, Landroid/support/v7/b/k;->ActionBarWindow:[I

    invoke-virtual {v0, v1}, Landroid/support/v7/a/f;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 106
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 108
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/a/g;->b:Z

    .line 113
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/a/g;->c:Z

    .line 114
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    iget-object v0, p0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/f;

    invoke-static {v0}, Landroid/support/v4/a/ak;->b(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Landroid/support/v7/a/g;->d:Landroid/support/v7/a/a;

    if-nez v0, :cond_2

    .line 118
    iput-boolean v3, p0, Landroid/support/v7/a/g;->f:Z

    .line 123
    :cond_1
    :goto_0
    return-void

    .line 120
    :cond_2
    iget-object v0, p0, Landroid/support/v7/a/g;->d:Landroid/support/v7/a/a;

    invoke-virtual {v0, v3}, Landroid/support/v7/a/a;->b(Z)V

    goto :goto_0
.end method

.method abstract a(Landroid/view/View;)V
.end method

.method abstract a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method abstract a(Ljava/lang/CharSequence;)V
.end method

.method abstract a(ILandroid/view/Menu;)Z
.end method

.method abstract a(ILandroid/view/MenuItem;)Z
.end method

.method abstract a(ILandroid/view/View;Landroid/view/Menu;)Z
.end method

.method public final b()Landroid/support/v7/a/a;
    .locals 2

    .prologue
    .line 81
    iget-boolean v0, p0, Landroid/support/v7/a/g;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/a/g;->c:Z

    if-eqz v0, :cond_2

    .line 82
    :cond_0
    iget-object v0, p0, Landroid/support/v7/a/g;->d:Landroid/support/v7/a/a;

    if-nez v0, :cond_1

    .line 83
    invoke-virtual {p0}, Landroid/support/v7/a/g;->a()Landroid/support/v7/a/a;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/a/g;->d:Landroid/support/v7/a/a;

    .line 85
    iget-boolean v0, p0, Landroid/support/v7/a/g;->f:Z

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Landroid/support/v7/a/g;->d:Landroid/support/v7/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->b(Z)V

    .line 93
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/v7/a/g;->d:Landroid/support/v7/a/a;

    return-object v0

    .line 91
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/a/g;->d:Landroid/support/v7/a/a;

    goto :goto_0
.end method

.method abstract b(I)Landroid/view/View;
.end method

.method abstract b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method final c()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Landroid/support/v7/a/g;->e:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Landroid/support/v7/internal/view/d;

    invoke-virtual {p0}, Landroid/support/v7/a/g;->j()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/internal/view/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/a/g;->e:Landroid/view/MenuInflater;

    .line 100
    :cond_0
    iget-object v0, p0, Landroid/support/v7/a/g;->e:Landroid/view/MenuInflater;

    return-object v0
.end method

.method abstract d()V
.end method

.method abstract e()V
.end method

.method abstract f()V
.end method

.method abstract g()V
.end method

.method abstract h()Z
.end method

.method protected final i()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 186
    :try_start_0
    iget-object v1, p0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/f;

    invoke-virtual {v1}, Landroid/support/v7/a/f;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 187
    iget-object v2, p0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/f;

    invoke-virtual {v2}, Landroid/support/v7/a/f;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 191
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 192
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "android.support.UI_OPTIONS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 198
    :cond_0
    :goto_0
    return-object v0

    .line 196
    :catch_0
    move-exception v1

    const-string v1, "ActionBarActivityDelegate"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getUiOptionsFromMetadata: Activity \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/f;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' not in manifest"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected final j()Landroid/content/Context;
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/f;

    .line 206
    invoke-virtual {p0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v1

    .line 207
    if-eqz v1, :cond_0

    .line 208
    invoke-virtual {v1}, Landroid/support/v7/a/a;->e()Landroid/content/Context;

    move-result-object v0

    .line 210
    :cond_0
    return-object v0
.end method
