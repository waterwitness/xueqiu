.class final Lcom/pingan/b/c/c$2;
.super Ljava/lang/Object;
.source "FormUploader.java"

# interfaces
.implements Lcom/pingan/b/a/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pingan/b/c/c;
.end annotation


# instance fields
.field final synthetic a:Lcom/pingan/b/c/l;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/pingan/b/c/h;

.field final synthetic d:Lcom/pingan/b/c/j;

.field final synthetic e:Lcom/pingan/b/c/a;

.field final synthetic f:Lcom/pingan/b/a/f;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Lcom/pingan/b/a/i;

.field final synthetic i:Lcom/pingan/b/a/j;


# direct methods
.method constructor <init>(Lcom/pingan/b/c/l;Ljava/lang/String;Lcom/pingan/b/c/h;Lcom/pingan/b/c/j;Lcom/pingan/b/c/a;Lcom/pingan/b/a/f;Ljava/lang/String;Lcom/pingan/b/a/i;Lcom/pingan/b/a/j;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/pingan/b/c/c$2;->a:Lcom/pingan/b/c/l;

    iput-object p2, p0, Lcom/pingan/b/c/c$2;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/pingan/b/c/c$2;->c:Lcom/pingan/b/c/h;

    iput-object p4, p0, Lcom/pingan/b/c/c$2;->d:Lcom/pingan/b/c/j;

    iput-object p5, p0, Lcom/pingan/b/c/c$2;->e:Lcom/pingan/b/c/a;

    iput-object p6, p0, Lcom/pingan/b/c/c$2;->f:Lcom/pingan/b/a/f;

    iput-object p7, p0, Lcom/pingan/b/c/c$2;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/pingan/b/c/c$2;->h:Lcom/pingan/b/a/i;

    iput-object p9, p0, Lcom/pingan/b/c/c$2;->i:Lcom/pingan/b/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/pingan/b/a/m;Lorg/json/JSONObject;)V
    .locals 7

    .prologue
    .line 109
    invoke-virtual {p1}, Lcom/pingan/b/a/m;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/pingan/b/c/c$2;->a:Lcom/pingan/b/c/l;

    iget-object v0, v0, Lcom/pingan/b/c/l;->b:Lcom/pingan/b/c/i;

    iget-object v1, p0, Lcom/pingan/b/c/c$2;->b:Ljava/lang/String;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-interface {v0, v1, v2, v3}, Lcom/pingan/b/c/i;->a(Ljava/lang/String;D)V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/pingan/b/c/c$2;->c:Lcom/pingan/b/c/h;

    iget-object v1, p0, Lcom/pingan/b/c/c$2;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/pingan/b/c/h;->a(Ljava/lang/String;Lcom/pingan/b/a/m;Lorg/json/JSONObject;)V

    .line 137
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/pingan/b/c/c$2;->a:Lcom/pingan/b/c/l;

    iget-object v0, v0, Lcom/pingan/b/c/l;->c:Lcom/pingan/b/c/g;

    invoke-interface {v0}, Lcom/pingan/b/c/g;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    invoke-static {}, Lcom/pingan/b/a/m;->a()Lcom/pingan/b/a/m;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/pingan/b/c/c$2;->c:Lcom/pingan/b/c/h;

    iget-object v2, p0, Lcom/pingan/b/c/c$2;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lcom/pingan/b/c/h;->a(Ljava/lang/String;Lcom/pingan/b/a/m;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 115
    :cond_2
    invoke-virtual {p1}, Lcom/pingan/b/a/m;->d()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/pingan/b/c/c$2;->d:Lcom/pingan/b/c/j;

    invoke-virtual {v0}, Lcom/pingan/b/c/j;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    :cond_3
    new-instance v4, Lcom/pingan/b/c/c$2$1;

    invoke-direct {v4, p0}, Lcom/pingan/b/c/c$2$1;-><init>(Lcom/pingan/b/c/c$2;)V

    .line 125
    iget-object v0, p0, Lcom/pingan/b/c/c$2;->e:Lcom/pingan/b/c/a;

    iget-object v0, v0, Lcom/pingan/b/c/a;->a:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Lcom/pingan/b/a/m;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 127
    iget-object v0, p0, Lcom/pingan/b/c/c$2;->e:Lcom/pingan/b/c/a;

    iget-object v0, v0, Lcom/pingan/b/c/a;->b:Ljava/lang/String;

    move-object v1, v0

    .line 129
    :goto_1
    const/4 v6, 0x0

    .line 130
    iget-object v0, p0, Lcom/pingan/b/c/c$2;->d:Lcom/pingan/b/c/j;

    invoke-virtual {v0}, Lcom/pingan/b/c/j;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 131
    const/4 v6, 0x1

    .line 133
    :cond_4
    iget-object v0, p0, Lcom/pingan/b/c/c$2;->f:Lcom/pingan/b/a/f;

    iget-object v2, p0, Lcom/pingan/b/c/c$2;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/pingan/b/c/c$2;->b:Ljava/lang/String;

    .line 1024
    invoke-static {v1, v2, v3}, Lcom/pingan/b/c/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    iget-object v2, p0, Lcom/pingan/b/c/c$2;->h:Lcom/pingan/b/a/i;

    iget-object v3, p0, Lcom/pingan/b/c/c$2;->i:Lcom/pingan/b/a/j;

    iget-object v5, p0, Lcom/pingan/b/c/c$2;->a:Lcom/pingan/b/c/l;

    iget-object v5, v5, Lcom/pingan/b/c/l;->c:Lcom/pingan/b/c/g;

    invoke-virtual/range {v0 .. v6}, Lcom/pingan/b/a/f;->a(Ljava/lang/String;Lcom/pingan/b/a/i;Lcom/pingan/b/a/j;Lcom/pingan/b/a/e;Lcom/pingan/b/a/c;Z)V

    goto :goto_0

    :cond_5
    move-object v1, v0

    goto :goto_1
.end method
