.class public Lcom/snowballfinance/messageplatform/data/Menu;
.super Ljava/lang/Object;
.source "Menu.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x11cf8ae4079472c3L


# instance fields
.field private id:Ljava/lang/Long;

.field private menuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snowballfinance/messageplatform/data/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private ts:Ljava/lang/Long;

.field private type:Lcom/snowballfinance/messageplatform/data/MenuType;

.field private userId:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method private updateMenuItemsDefaultValues(Ljava/util/List;)V
    .locals 3
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
    .line 84
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 85
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snowballfinance/messageplatform/data/MenuItem;

    .line 86
    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/MenuItem;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/MenuItem;->getType()Lcom/snowballfinance/messageplatform/data/MenuItemType;

    move-result-object v2

    if-nez v2, :cond_0

    .line 87
    sget-object v2, Lcom/snowballfinance/messageplatform/data/MenuItemType;->CLICK:Lcom/snowballfinance/messageplatform/data/MenuItemType;

    invoke-virtual {v0, v2}, Lcom/snowballfinance/messageplatform/data/MenuItem;->setType(Lcom/snowballfinance/messageplatform/data/MenuItemType;)V

    .line 89
    :cond_0
    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/MenuItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/MenuItem;->getType()Lcom/snowballfinance/messageplatform/data/MenuItemType;

    move-result-object v2

    if-nez v2, :cond_1

    .line 90
    sget-object v2, Lcom/snowballfinance/messageplatform/data/MenuItemType;->VIEW:Lcom/snowballfinance/messageplatform/data/MenuItemType;

    invoke-virtual {v0, v2}, Lcom/snowballfinance/messageplatform/data/MenuItem;->setType(Lcom/snowballfinance/messageplatform/data/MenuItemType;)V

    .line 92
    :cond_1
    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/MenuItem;->getSubItems()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snowballfinance/messageplatform/data/Menu;->updateMenuItemsDefaultValues(Ljava/util/List;)V

    goto :goto_0

    .line 95
    :cond_2
    return-void
.end method


# virtual methods
.method public description()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "user="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/Menu;->userId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/Menu;->type:Lcom/snowballfinance/messageplatform/data/MenuType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|ts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/Menu;->ts:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|items="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Menu;->menuItems:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Menu;->menuItems:Ljava/util/List;

    invoke-static {v0}, Lcom/snowballfinance/messageplatform/b/d;->a(Ljava/util/Collection;)Lcom/google/gson/JsonArray;

    move-result-object v0

    goto :goto_0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Menu;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getMenuItems()Ljava/util/List;
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
    .line 60
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Menu;->menuItems:Ljava/util/List;

    return-object v0
.end method

.method public getTs()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Menu;->ts:Ljava/lang/Long;

    return-object v0
.end method

.method public getType()Lcom/snowballfinance/messageplatform/data/MenuType;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Menu;->type:Lcom/snowballfinance/messageplatform/data/MenuType;

    return-object v0
.end method

.method public getUserId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Menu;->userId:Ljava/lang/Long;

    return-object v0
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Menu;->id:Ljava/lang/Long;

    .line 41
    return-void
.end method

.method public setMenuItems(Ljava/util/List;)V
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
    .line 64
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Menu;->menuItems:Ljava/util/List;

    .line 65
    return-void
.end method

.method public setTs(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Menu;->ts:Ljava/lang/Long;

    .line 73
    return-void
.end method

.method public setType(Lcom/snowballfinance/messageplatform/data/MenuType;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Menu;->type:Lcom/snowballfinance/messageplatform/data/MenuType;

    .line 49
    return-void
.end method

.method public setUserId(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Menu;->userId:Ljava/lang/Long;

    .line 57
    return-void
.end method

.method public updateDefaultValues()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Menu;->type:Lcom/snowballfinance/messageplatform/data/MenuType;

    if-nez v0, :cond_0

    .line 78
    sget-object v0, Lcom/snowballfinance/messageplatform/data/MenuType;->HYBRID_MENU:Lcom/snowballfinance/messageplatform/data/MenuType;

    iput-object v0, p0, Lcom/snowballfinance/messageplatform/data/Menu;->type:Lcom/snowballfinance/messageplatform/data/MenuType;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Menu;->menuItems:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/snowballfinance/messageplatform/data/Menu;->updateMenuItemsDefaultValues(Ljava/util/List;)V

    .line 81
    return-void
.end method
