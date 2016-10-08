.class abstract Landroid/support/v7/internal/view/menu/l;
.super Landroid/support/v7/internal/view/menu/m;
.source "BaseMenuWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/internal/view/menu/m",
        "<TT;>;"
    }
.end annotation


# instance fields
.field a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/MenuItem;",
            "Landroid/support/v4/c/a/b;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/SubMenu;",
            "Landroid/view/SubMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/support/v7/internal/view/menu/m;-><init>(Ljava/lang/Object;)V

    .line 34
    return-void
.end method


# virtual methods
.method final a(Landroid/view/MenuItem;)Landroid/support/v4/c/a/b;
    .locals 2

    .prologue
    .line 37
    if-eqz p1, :cond_4

    .line 39
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/l;->a:Ljava/util/HashMap;

    .line 43
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/c/a/b;

    .line 45
    if-nez v0, :cond_1

    .line 1066
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 1067
    new-instance v0, Landroid/support/v7/internal/view/menu/z;

    invoke-direct {v0, p1}, Landroid/support/v7/internal/view/menu/z;-><init>(Landroid/view/MenuItem;)V

    .line 47
    :goto_0
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/l;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_1
    :goto_1
    return-object v0

    .line 1068
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_3

    .line 1069
    new-instance v0, Landroid/support/v7/internal/view/menu/u;

    invoke-direct {v0, p1}, Landroid/support/v7/internal/view/menu/u;-><init>(Landroid/view/MenuItem;)V

    goto :goto_0

    .line 1071
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 52
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method final a(Landroid/view/SubMenu;)Landroid/view/SubMenu;
    .locals 2

    .prologue
    .line 56
    if-eqz p1, :cond_3

    .line 58
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->b:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/l;->b:Ljava/util/HashMap;

    .line 62
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    .line 64
    if-nez v0, :cond_1

    .line 2058
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 2059
    new-instance v0, Landroid/support/v7/internal/view/menu/ak;

    invoke-direct {v0, p1}, Landroid/support/v7/internal/view/menu/ak;-><init>(Landroid/view/SubMenu;)V

    .line 66
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/l;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_1
    :goto_0
    return-object v0

    .line 2061
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 70
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
