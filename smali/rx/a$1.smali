.class final Lrx/a$1;
.super Ljava/lang/Object;
.source "Observable.java"

# interfaces
.implements Lrx/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/a;->a(Lrx/c;)Lrx/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/b",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/c;

.field final synthetic b:Lrx/a;


# direct methods
.method constructor <init>(Lrx/a;Lrx/c;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lrx/a$1;->b:Lrx/a;

    iput-object p2, p0, Lrx/a$1;->a:Lrx/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 137
    check-cast p1, Lrx/i;

    .line 1141
    :try_start_0
    invoke-static {}, Lrx/a;->j()Lrx/g/b;

    iget-object v1, p0, Lrx/a$1;->a:Lrx/c;

    invoke-static {v1}, Lrx/g/b;->a(Lrx/c;)Lrx/c;

    move-result-object v1

    invoke-interface {v1, p1}, Lrx/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/i;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 1144
    :try_start_1
    invoke-virtual {v1}, Lrx/i;->d()V

    .line 1145
    iget-object v2, p0, Lrx/a$1;->b:Lrx/a;

    iget-object v2, v2, Lrx/a;->a:Lrx/b;

    invoke-interface {v2, v1}, Lrx/b;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1162
    :goto_0
    return-void

    .line 1146
    :catch_0
    move-exception v2

    .line 1150
    :try_start_2
    instance-of v3, v2, Lrx/b/i;

    if-eqz v3, :cond_0

    .line 1151
    move-object v0, v2

    check-cast v0, Lrx/b/i;

    move-object v1, v0

    throw v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 1155
    :catch_1
    move-exception v1

    .line 1156
    instance-of v2, v1, Lrx/b/i;

    if-eqz v2, :cond_1

    .line 1157
    check-cast v1, Lrx/b/i;

    throw v1

    .line 1153
    :cond_0
    :try_start_3
    invoke-virtual {v1, v2}, Lrx/i;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1161
    :cond_1
    invoke-virtual {p1, v1}, Lrx/i;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
