.class public final Lrx/a/a/a;
.super Ljava/lang/Object;
.source "AppObservable.java"


# static fields
.field public static final a:Z

.field private static final b:Lrx/c/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/f",
            "<",
            "Landroid/app/Activity;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lrx/c/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/f",
            "<",
            "Landroid/app/Fragment;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lrx/c/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/f",
            "<",
            "Landroid/support/v4/a/i;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    const/4 v0, 0x0

    .line 34
    :try_start_0
    const-string v1, "android.support.v4.a.i"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    const/4 v0, 0x1

    .line 39
    :goto_0
    sput-boolean v0, Lrx/a/a/a;->a:Z

    .line 42
    new-instance v0, Lrx/a/a/a$1;

    invoke-direct {v0}, Lrx/a/a/a$1;-><init>()V

    sput-object v0, Lrx/a/a/a;->b:Lrx/c/f;

    .line 48
    new-instance v0, Lrx/a/a/a$2;

    invoke-direct {v0}, Lrx/a/a/a$2;-><init>()V

    sput-object v0, Lrx/a/a/a;->c:Lrx/c/f;

    .line 54
    new-instance v0, Lrx/a/a/a$3;

    invoke-direct {v0}, Lrx/a/a/a$3;-><init>()V

    sput-object v0, Lrx/a/a/a;->d:Lrx/c/f;

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Lrx/a;)Lrx/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/app/Activity;",
            "Lrx/a",
            "<TT;>;)",
            "Lrx/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 78
    invoke-static {}, Lrx/a/c/a;->a()V

    .line 79
    invoke-static {}, Lrx/a/d/a;->a()Lrx/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/a;->a(Lrx/g;)Lrx/a;

    move-result-object v0

    new-instance v1, Lrx/a/a/b;

    sget-object v2, Lrx/a/a/a;->b:Lrx/c/f;

    invoke-direct {v1, p0, v2}, Lrx/a/a/b;-><init>(Ljava/lang/Object;Lrx/c/f;)V

    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/c;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Lrx/a;)Lrx/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lrx/a",
            "<TT;>;)",
            "Lrx/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 97
    invoke-static {}, Lrx/a/c/a;->a()V

    .line 98
    invoke-static {}, Lrx/a/d/a;->a()Lrx/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/a;->a(Lrx/g;)Lrx/a;

    move-result-object v0

    .line 99
    sget-boolean v1, Lrx/a/a/a;->a:Z

    if-eqz v1, :cond_0

    instance-of v1, p0, Landroid/support/v4/a/i;

    if-eqz v1, :cond_0

    .line 100
    check-cast p0, Landroid/support/v4/a/i;

    .line 101
    new-instance v1, Lrx/a/a/b;

    sget-object v2, Lrx/a/a/a;->d:Lrx/c/f;

    invoke-direct {v1, p0, v2}, Lrx/a/a/b;-><init>(Ljava/lang/Object;Lrx/c/f;)V

    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/c;)Lrx/a;

    move-result-object v0

    .line 104
    :goto_0
    return-object v0

    .line 102
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    instance-of v1, p0, Landroid/app/Fragment;

    if-eqz v1, :cond_1

    .line 103
    check-cast p0, Landroid/app/Fragment;

    .line 104
    new-instance v1, Lrx/a/a/b;

    sget-object v2, Lrx/a/a/a;->c:Lrx/c/f;

    invoke-direct {v1, p0, v2}, Lrx/a/a/b;-><init>(Ljava/lang/Object;Lrx/c/f;)V

    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/c;)Lrx/a;

    move-result-object v0

    goto :goto_0

    .line 106
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target fragment is neither a native nor support library Fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
