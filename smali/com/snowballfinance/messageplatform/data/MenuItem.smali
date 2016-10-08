.class public Lcom/snowballfinance/messageplatform/data/MenuItem;
.super Ljava/lang/Object;
.source "MenuItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x18c5ba641fce61d6L


# instance fields
.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private subItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snowballfinance/messageplatform/data/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private type:Lcom/snowballfinance/messageplatform/data/MenuItemType;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MenuItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MenuItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSubItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snowballfinance/messageplatform/data/MenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MenuItem;->subItems:Ljava/util/List;

    return-object v0
.end method

.method public getType()Lcom/snowballfinance/messageplatform/data/MenuItemType;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MenuItem;->type:Lcom/snowballfinance/messageplatform/data/MenuItemType;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MenuItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/MenuItem;->id:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/MenuItem;->name:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setSubItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snowballfinance/messageplatform/data/MenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/MenuItem;->subItems:Ljava/util/List;

    .line 72
    return-void
.end method

.method public setType(Lcom/snowballfinance/messageplatform/data/MenuItemType;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/MenuItem;->type:Lcom/snowballfinance/messageplatform/data/MenuItemType;

    .line 64
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/MenuItem;->url:Ljava/lang/String;

    .line 48
    return-void
.end method
