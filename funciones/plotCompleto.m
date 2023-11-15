function plotCompleto(lim_ejes,eje_x,eje_y,titulo,tam_letra,col,grosor,t,x)
    figure('units','normalized','outerposition',[0011]);
    plot(t,x,col,'Linewidth',grosor); %Grafico.Color(ymarcador)ygrosor.
    axis(lim_ejes);gridon; %L´?mitesdelosejes.Grilla.
    set(gca,'FontSize',tam_letra); %Tama~nodeletraparalaleyendayejes.
    xlabel(eje_x,'Interpreter','Latex'); %Nombroelejex.
    ylabel(eje_y,'Interpreter','Latex'); %Nombroelejey.
    title(titulo); %Colocot´?tuloparaelgr´afico.
end