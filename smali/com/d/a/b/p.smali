.class final Lcom/d/a/b/p;
.super Ljava/lang/Object;
.source "ProcessAndDisplayImageTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/d/a/b/l;

.field private final b:Landroid/graphics/Bitmap;

.field private final c:Lcom/d/a/b/m;

.field private final d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/d/a/b/l;Landroid/graphics/Bitmap;Lcom/d/a/b/m;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/d/a/b/p;->a:Lcom/d/a/b/l;

    .line 44
    iput-object p2, p0, Lcom/d/a/b/p;->b:Landroid/graphics/Bitmap;

    .line 45
    iput-object p3, p0, Lcom/d/a/b/p;->c:Lcom/d/a/b/m;

    .line 46
    iput-object p4, p0, Lcom/d/a/b/p;->d:Landroid/os/Handler;

    .line 47
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 51
    const-string v0, "PostProcess image before displaying [%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/d/a/b/p;->c:Lcom/d/a/b/m;

    iget-object v3, v3, Lcom/d/a/b/m;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/d/a/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/d/a/b/p;->c:Lcom/d/a/b/m;

    iget-object v0, v0, Lcom/d/a/b/m;->e:Lcom/d/a/b/d;

    .line 1182
    iget-object v0, v0, Lcom/d/a/b/d;->p:Lcom/d/a/b/g/a;

    .line 54
    invoke-interface {v0}, Lcom/d/a/b/g/a;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 55
    new-instance v1, Lcom/d/a/b/c;

    iget-object v2, p0, Lcom/d/a/b/p;->c:Lcom/d/a/b/m;

    iget-object v3, p0, Lcom/d/a/b/p;->a:Lcom/d/a/b/l;

    sget-object v4, Lcom/d/a/b/a/g;->c:Lcom/d/a/b/a/g;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/d/a/b/c;-><init>(Landroid/graphics/Bitmap;Lcom/d/a/b/m;Lcom/d/a/b/l;Lcom/d/a/b/a/g;)V

    .line 57
    iget-object v0, p0, Lcom/d/a/b/p;->c:Lcom/d/a/b/m;

    iget-object v0, v0, Lcom/d/a/b/m;->e:Lcom/d/a/b/d;

    .line 1194
    iget-boolean v0, v0, Lcom/d/a/b/d;->s:Z

    .line 57
    iget-object v2, p0, Lcom/d/a/b/p;->d:Landroid/os/Handler;

    iget-object v3, p0, Lcom/d/a/b/p;->a:Lcom/d/a/b/l;

    invoke-static {v1, v0, v2, v3}, Lcom/d/a/b/n;->a(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/d/a/b/l;)V

    .line 58
    return-void
.end method
