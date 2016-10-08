.class final Lcom/tencent/stat/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/stat/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/stat/d;->a(Z)V
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/stat/d;


# direct methods
.method constructor <init>(Lcom/tencent/stat/d;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/stat/d$1;->a:Lcom/tencent/stat/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/tencent/stat/StatStore;->getInstance()Lcom/tencent/stat/StatStore;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/tencent/stat/StatStore;->loadEvents(I)V

    return-void
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/tencent/stat/StatStore;->getInstance()Lcom/tencent/stat/StatStore;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/stat/d$1;->a:Lcom/tencent/stat/d;

    invoke-static {v1}, Lcom/tencent/stat/d;->a(Lcom/tencent/stat/d;)Lcom/tencent/stat/event/Event;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/stat/StatStore;->storeEvent(Lcom/tencent/stat/event/Event;Lcom/tencent/stat/b;)V

    return-void
.end method
